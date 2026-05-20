.class public Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryWidgetHolderView;
.super Landroid/widget/FrameLayout;
.source "ServiceDeliveryWidgetHolderView.java"

# interfaces
.implements Lcom/miui/miuiwidget/servicedelivery/appwidget/IServiceDeliveryWidgetView;


# instance fields
.field private TAG:Ljava/lang/String;

.field private startLoading:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "ServiceDeliveryWidgetHolderView"

    .line 18
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryWidgetHolderView;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryWidgetHolderView;->startLoading:Z

    return-void
.end method


# virtual methods
.method public isLoading()Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryWidgetHolderView;->startLoading:Z

    return p0
.end method

.method public setPlaceHolder(Landroid/graphics/Bitmap;)V
    .locals 3

    if-nez p1, :cond_0

    .line 35
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryWidgetHolderView;->TAG:Ljava/lang/String;

    const-string p1, "drawable == null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 38
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 42
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public startLoading()V
    .locals 1

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryWidgetHolderView;->startLoading:Z

    return-void
.end method
