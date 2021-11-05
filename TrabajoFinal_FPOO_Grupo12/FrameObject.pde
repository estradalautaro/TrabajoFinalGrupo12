class FrameObject extends GameObject {
  
  protected PImage sprite;
  protected int posXframe;
  protected int posYframe;
  protected int heightFrame;
  protected int widthFrame;
  
  public void display() {
    imageMode(CENTER);
    image(this.sprite, this.posicion.x,this.posicion.y,this.widthFrame,this.heightFrame);
  }
  
  public PImage getSprite() { 
    return this.sprite;
  }
  public void setSprite(PImage sprite) {
    this.sprite = sprite;
  }
  public int getPosXframe() {
    return this.posXframe;
  }
  public void setPosXFrame(int posXframe) {
    this.posXframe=posXframe;
  }
  public int getPosYframe() {
    return this.posYframe;
  }
  public void setPosYFrame(int posYframe) {
    this.posYframe=posYframe;
  }
  public int getHeightFrame() {
    return this.heightFrame;
  }
  public void setHeightFrame(int heightFrame) {
    this.heightFrame = heightFrame;
  }
  public int getWidthFrame() {
    return this.widthFrame;
  }
  public void setWidthFrame(int widthFrame) {
    this.widthFrame = widthFrame;
  }
}
