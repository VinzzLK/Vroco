.class Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$1;
.super Landroid/view/ViewOutlineProvider;
.source "Carousel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;


# direct methods
.method constructor <init>(Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$1;->this$0:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$1;->this$0:Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel;

    .line 93
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/miui/miuiwidget/R$dimen;->delivery_widget_radius:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    .line 92
    invoke-virtual {p2, v0, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    const/4 p0, 0x0

    .line 94
    invoke-virtual {p2, p0}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method
