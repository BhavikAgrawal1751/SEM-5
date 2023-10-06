<?php
class Fruit {
  public $name;
  public $color;
  public $weight;
  function set_name($n, $strColor) {  // a public function (default)
    $this->name = $n;
	$this->set_color($strColor);
  }
  protected function set_color($n) { // a protected function
    $this->color = $n;
  }
  private function set_weight($n) { // a private function
    $this->weight = $n;
  }  
  public function get_name(){ return $this->name; }
  public function get_color(){ return $this->color; }
}

$mango = new Fruit();
$mango->set_name('Mango', 'Yellow'); // OK
echo "++++++".$mango->get_name()."|}}}}}".$mango->get_color();
//$mango->set_weight('300'); // ERROR
?>