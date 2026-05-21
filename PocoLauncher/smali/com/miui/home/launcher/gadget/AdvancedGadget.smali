.class public abstract Lcom/miui/home/launcher/gadget/AdvancedGadget;
.super Lcom/miui/home/launcher/gadget/Gadget;
.source "AdvancedGadget.java"


# direct methods
.method public static synthetic $r8$lambda$AVrRibOfhEJ8Zw8WEPVxI8gSF-Y(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/gadget/AdvancedGadget;->lambda$cleanUpView$0(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/Gadget;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$cleanUpView$0(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-static {p0}, Lcom/miui/launcher/utils/MamlUtils;->clearUpView(Landroid/view/View;)V

    const/4 p0, 0x0

    .line 47
    invoke-static {p1, p0}, Lcom/miui/launcher/utils/MamlUtils;->setOnExternCommandListener(Ljava/lang/Object;Lcom/miui/launcher/views/MamlOnExternCommandListener;)V

    return-void
.end method


# virtual methods
.method public abstract cleanUp()V
.end method

.method protected cleanUpView(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1

    .line 41
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p0

    if-nez p0, :cond_0

    .line 43
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 45
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/gadget/AdvancedGadget$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1}, Lcom/miui/home/launcher/gadget/AdvancedGadget$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic getScreenId()J
    .locals 2

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getScreenId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getViewCellX()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewCellX()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getViewCellY()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewCellY()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getViewSpanX()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewSpanX()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getViewSpanY()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewSpanY()I

    move-result p0

    return p0
.end method

.method public onDeleted()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/AdvancedGadget;->cleanUp()V

    return-void
.end method

.method public bridge synthetic setIgnoreAnimationForOnce(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setIgnoreAnimationForOnce(Z)V

    return-void
.end method

.method public abstract synthetic setIsAutoLayoutAnimating(Z)V
.end method
