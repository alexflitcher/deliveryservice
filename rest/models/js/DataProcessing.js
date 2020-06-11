'use strict'
class DataProcessing {
  constructor(data) {
    this.data = data;
  }

  enum(typeData = 'array', separator = ' ') {
    if (typeData == 'array') {
      return this.data.join(separator);
    } else if (typeData == 'object') {
      let string2 = '';
      for (let p in this.data) {
        string2 += this.data[p] + separator;
      }
      return string2;
    }
  }
}
