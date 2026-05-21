.class public Lcom/miui/home/launcher/multiselect/ApplyContainer;
.super Lcom/miui/home/launcher/multiselect/TopMenuContainer;
.source "ApplyContainer.java"


# direct methods
.method public static synthetic $r8$lambda$2eBc_6IvbQb8lZh4sJ-VbP2b-Rc(Lcom/miui/home/launcher/multiselect/ApplyContainer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/multiselect/ApplyContainer;->lambda$onFinishInflate$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;)V
    .locals 2

    .line 29
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->isNormalState()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x7

    .line 32
    new-instance v0, Lcom/miui/home/launcher/EditStateChangeReason;

    const-string v1, "event_apply"

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/EditStateChangeReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILcom/miui/home/launcher/EditStateChangeReason;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 22
    invoke-super {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->onFinishInflate()V

    const v0, 0x7f0802fe

    .line 23
    invoke-virtual {p0, v0, v0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->setImageResource(II)V

    const v0, 0x7f0a03cd

    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f10029d

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const-string v1, ""

    .line 26
    invoke-static {p0, v1, v0}, Lcom/miui/home/launcher/AccessibilityAdaptHelper;->setButtonItemViewAccessibility(Landroid/view/View;Ljava/lang/String;Landroid/widget/TextView;)V

    .line 28
    new-instance v0, Lcom/miui/home/launcher/multiselect/ApplyContainer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/multiselect/ApplyContainer$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/multiselect/ApplyContainer;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateImageAndTextColor(II)V
    .locals 0

    return-void
.end method
