.class public final Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;
.super Ljava/lang/Object;
.source "Indicator.java"

# interfaces
.implements Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$OnChildAddedListener;
.implements Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$OnChildRemovedListener;
.implements Lcom/miui/miuiwidget/servicedelivery/view/carousel/Carousel$OnSelectedChildChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Indicator"


# instance fields
.field private final layout:Landroid/widget/LinearLayout;

.field private selectedPosition:I

.field private final uiAdapter:Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->layout:Landroid/widget/LinearLayout;

    const/4 p1, -0x1

    .line 27
    iput p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->selectedPosition:I

    .line 28
    iput-object p2, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->uiAdapter:Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

    return-void
.end method

.method private checkAndSetSelected(ZILjava/lang/String;)V
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 132
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 134
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " view == null selected position:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Indicator"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private createDot()Landroid/view/View;
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-direct {p0, v1}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->setDotLayoutParams(Landroid/view/View;)V

    .line 67
    invoke-direct {p0, v0}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->createSelectorDrawable(Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x0

    .line 68
    invoke-virtual {v1, p0}, Landroid/view/View;->setFocusable(Z)V

    return-object v1
.end method

.method private createRoundDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 89
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 90
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 p1, 0x41500000    # 13.0f

    .line 91
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 92
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->layout:Landroid/widget/LinearLayout;

    .line 93
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/miui/miuiwidget/R$dimen;->indicator_stroke_width:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    .line 92
    invoke-virtual {v0, p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0
.end method

.method private createSelectorDrawable(Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;
    .locals 4

    .line 73
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10100a1

    aput v3, v1, v2

    .line 74
    sget v2, Lcom/miui/miuiwidget/R$color;->delivery_carousel_indicator_color_selected:I

    .line 77
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    sget v3, Lcom/miui/miuiwidget/R$color;->delivery_carousel_indicator_stroke_color_selected:I

    .line 78
    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 76
    invoke-direct {p0, v2, v3}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->createRoundDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 80
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    sget v2, Lcom/miui/miuiwidget/R$color;->delivery_carousel_indicator_color:I

    .line 83
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    sget v3, Lcom/miui/miuiwidget/R$color;->delivery_carousel_indicator_stroke_color:I

    .line 84
    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 82
    invoke-direct {p0, v2, p1}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->createRoundDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 80
    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private setDotLayoutParams(Landroid/view/View;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->uiAdapter:Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

    invoke-virtual {v0}, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->getIndicatorWidth()I

    move-result v0

    .line 57
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->uiAdapter:Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;

    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->getIndicatorPaddingV()I

    move-result p0

    .line 58
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 59
    iput p0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 60
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 113
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->layout:Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public layout()Landroid/widget/LinearLayout;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->layout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public onChildAdded(I)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->layout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->createDot()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public onChildRemoved(I)V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChildRemoved childCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Indicator"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 104
    :cond_0
    iget v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->selectedPosition:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    const-string v1, "onChildRemoved"

    .line 105
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->checkAndSetSelected(ZILjava/lang/String;)V

    .line 107
    :cond_1
    iget-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->hide()V

    :cond_2
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 4

    const-string v0, "Indicator"

    const-string v1, "onConfigurationChanged: "

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 48
    :goto_0
    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 50
    invoke-direct {p0, v2}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->setDotLayoutParams(Landroid/view/View;)V

    .line 51
    invoke-direct {p0, v0}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->createSelectorDrawable(Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSelectedChildChanged(III)V
    .locals 1

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onSelectedChildChanged "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Indicator"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->selectedPosition:I

    const-string p3, "onSelectedChildChanged"

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, v0, p1, p3}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->checkAndSetSelected(ZILjava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->checkAndSetSelected(ZILjava/lang/String;)V

    .line 126
    iput p2, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->selectedPosition:I

    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->selectedPosition:I

    return-void
.end method

.method public show()V
    .locals 1

    .line 117
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/carousel/Indicator;->layout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
