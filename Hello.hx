
class Hello {
  // https://github.com/jasononeil/hxrandom/blob/master/src/Random.hx
  static inline function randomInt(from:Int, to:Int):Int {
    return from + Math.floor(((to - from + 1) * Math.random()));
  }

  static inline function randomHanzi(): String {
    var n = randomInt(0x4e00, 0x9fff);
    return String.fromCharCode(n);
  }

  static public function main():Void {
    // trace("你好世界");
    var array = [for (i in 0...8) randomHanzi()];
    trace(array);
  }
}
