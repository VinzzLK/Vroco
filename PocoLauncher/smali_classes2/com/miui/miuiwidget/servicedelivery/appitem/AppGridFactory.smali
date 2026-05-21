.class public Lcom/miui/miuiwidget/servicedelivery/appitem/AppGridFactory;
.super Ljava/lang/Object;
.source "AppGridFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createMedium(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;Ljava/util/concurrent/Executor;)Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;
    .locals 9

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 23
    new-instance v8, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    invoke-direct {v8, p1}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;-><init>(Landroid/content/Context;)V

    .line 24
    sget-object p1, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;->DEFAULT:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayout$LayoutStyle;

    const/4 v0, -0x1

    if-ne p2, p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 26
    :cond_0
    sget v1, Lcom/miui/miuiwidget/R$dimen;->delivery_layout_delivery4x2_app_grid_width:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    if-ne p2, p1, :cond_1

    goto :goto_1

    .line 29
    :cond_1
    sget v0, Lcom/miui/miuiwidget/R$dimen;->delivery_layout_delivery4x2_app_grid_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 30
    :goto_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x15

    .line 31
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 32
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-ne p2, p1, :cond_2

    .line 35
    sget v0, Lcom/miui/miuiwidget/R$dimen;->delivery_layout_default4x2_app_grid_spacing_h:I

    goto :goto_2

    .line 36
    :cond_2
    sget v0, Lcom/miui/miuiwidget/R$dimen;->delivery_layout_delivery4x2_app_grid_spacing_h:I

    .line 33
    :goto_2
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-ne p2, p1, :cond_3

    .line 39
    sget v0, Lcom/miui/miuiwidget/R$dimen;->delivery_layout_default4x2_app_grid_spacing_v:I

    goto :goto_3

    .line 40
    :cond_3
    sget v0, Lcom/miui/miuiwidget/R$dimen;->delivery_layout_delivery4x2_app_grid_spacing_v:I

    .line 37
    :goto_3
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 p0, 0x3

    if-ne p2, p1, :cond_4

    const/4 v0, 0x2

    move v1, v0

    goto :goto_4

    :cond_4
    move v1, p0

    :goto_4
    if-ne p2, p1, :cond_5

    const/4 p0, 0x5

    :cond_5
    move v2, p0

    move-object v0, v8

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 45
    invoke-virtual/range {v0 .. v7}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->init(IIIILcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;Ljava/util/concurrent/Executor;)V

    return-object v8
.end method

.method public createSmall(Landroid/content/Context;Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;Ljava/util/concurrent/Executor;)Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;
    .locals 9

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 55
    new-instance v8, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;

    invoke-direct {v8, p1}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    .line 57
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 58
    invoke-virtual {v8, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    sget p1, Lcom/miui/miuiwidget/R$dimen;->delivery_layout_default2x2_app_grid_spacing_v_h:I

    .line 62
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 63
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v1, 0x2

    const/4 v2, 0x2

    move-object v0, v8

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 59
    invoke-virtual/range {v0 .. v7}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->init(IIIILcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;Ljava/util/concurrent/Executor;)V

    return-object v8
.end method
