$('.hiddenform').hide();

$('.pay').click(function(e) {

	$('.hiddenform').submit(function(e) {
		e.preventDefault();
	})

	$('.hiddenform').show(500);

	$('.hiddenform input[type="submit"]').click(function(e) {
		let datetime = moment().utc().format('YYYY-MM-DD HH:mm:ss');
		let address  = $('.hiddenform input[name="address"]').val();
		let message  = $('.hiddenform textarea').val();
		let type_pay = $('.hiddenform input[name="type_pay"]:checked').val();
		let type_del = $('.hiddenform input[name="type_del"]:checked').val();

		if (datetime != undefined && address  != "" &&
			message  != "" && type_pay != undefined && 
			type_del != undefined) {
				$.ajax({
					url: "../components/component.addpurchase.php",
					method: "post",
					data: {
						datetime: datetime,
						address: address,
						message: message,
						type_pay: type_pay,
						type_del: type_del,
					},
				}).done(function(data) {
					alert("Готово");
				})
		} else {
			alert("Пожалуйста, заполните все поля");
		}
	});

});