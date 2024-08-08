// クリック判定メソッド
boolean hanniClicked(float x1, float y2, float w, float h) {
    if (mouseX >= x1 && mouseX <= x1+w && mouseY >= y2 && mouseY <= y2+h) {
        if (mousePressed) {
            return true;
        }
    }
    return false;
}
