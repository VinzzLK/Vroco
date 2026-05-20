.class Lcom/miui/home/launcher/ScreenView$StaticScrollXProperty;
.super Lmiuix/animation/property/ViewProperty;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StaticScrollXProperty"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "scrollX"

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1984
    invoke-direct {p0, v0, v1}, Lmiuix/animation/property/ViewProperty;-><init>(Ljava/lang/String;F)V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/view/View;)F
    .locals 0

    .line 1995
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 1982
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView$StaticScrollXProperty;->getValue(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public setValue(Landroid/view/View;F)V
    .locals 0

    .line 1990
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setScrollX(I)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1982
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView$StaticScrollXProperty;->setValue(Landroid/view/View;F)V

    return-void
.end method
