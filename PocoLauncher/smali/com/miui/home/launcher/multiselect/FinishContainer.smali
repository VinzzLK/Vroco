.class public Lcom/miui/home/launcher/multiselect/FinishContainer;
.super Lcom/miui/home/launcher/multiselect/TopMenuContainer;
.source "FinishContainer.java"


# static fields
.field private static final MASK_LAYER_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

.field private static final MASK_LAYER_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

.field private static final PRESSED_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

.field private static final PRESSED_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;


# direct methods
.method public static synthetic $r8$lambda$Lt9yxi4Txmg85kHigI7L2FTthFA(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/multiselect/FinishContainer;->lambda$onFinishInflate$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Lcom/miui/home/launcher/multiselect/TopMenuColor;

    const v1, 0x7f0606b4

    invoke-direct {v0, v1, v1}, Lcom/miui/home/launcher/multiselect/TopMenuColor;-><init>(II)V

    sput-object v0, Lcom/miui/home/launcher/multiselect/FinishContainer;->PRESSED_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    .line 25
    new-instance v1, Lcom/miui/home/launcher/multiselect/TopMenuState;

    const-string v2, "pressed"

    invoke-direct {v1, v0, v2}, Lcom/miui/home/launcher/multiselect/TopMenuState;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuColor;Ljava/lang/String;)V

    sput-object v1, Lcom/miui/home/launcher/multiselect/FinishContainer;->PRESSED_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    .line 28
    new-instance v0, Lcom/miui/home/launcher/multiselect/TopMenuColor;

    const v1, 0x7f0606af

    invoke-direct {v0, v1, v1}, Lcom/miui/home/launcher/multiselect/TopMenuColor;-><init>(II)V

    sput-object v0, Lcom/miui/home/launcher/multiselect/FinishContainer;->MASK_LAYER_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    .line 29
    new-instance v1, Lcom/miui/home/launcher/multiselect/TopMenuState;

    const-string v2, "maskLayer"

    invoke-direct {v1, v0, v2}, Lcom/miui/home/launcher/multiselect/TopMenuState;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuColor;Ljava/lang/String;)V

    sput-object v1, Lcom/miui/home/launcher/multiselect/FinishContainer;->MASK_LAYER_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static synthetic lambda$onFinishInflate$0(Landroid/view/View;)V
    .locals 4

    .line 47
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 49
    new-instance v2, Lcom/miui/home/launcher/EditStateChangeReason;

    const-string v3, "event_finish_button"

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/EditStateChangeReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILjava/lang/Runnable;Lcom/miui/home/launcher/EditStateChangeReason;)V

    const-string p0, "finish"

    .line 51
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEditModeTopMenuClickEvent(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getMaskLayerState()Lcom/miui/home/launcher/multiselect/TopMenuState;
    .locals 0

    .line 71
    sget-object p0, Lcom/miui/home/launcher/multiselect/FinishContainer;->MASK_LAYER_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    return-object p0
.end method

.method protected getPressedState()Lcom/miui/home/launcher/multiselect/TopMenuState;
    .locals 0

    .line 61
    sget-object p0, Lcom/miui/home/launcher/multiselect/FinishContainer;->PRESSED_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    return-object p0
.end method

.method public hasTouchAnim()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 38
    invoke-super {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->onFinishInflate()V

    const v0, 0x7f0802fe

    const v1, 0x7f0802ff

    const/4 v2, 0x1

    .line 41
    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->setImageResource(IIZ)V

    const v0, 0x7f0a03cd

    .line 42
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f100194

    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const-string v1, ""

    .line 44
    invoke-static {p0, v1, v0}, Lcom/miui/home/launcher/AccessibilityAdaptHelper;->setButtonItemViewAccessibility(Landroid/view/View;Ljava/lang/String;Landroid/widget/TextView;)V

    .line 46
    sget-object v0, Lcom/miui/home/launcher/multiselect/FinishContainer$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/launcher/multiselect/FinishContainer$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateImageAndTextColor(II)V
    .locals 0

    return-void
.end method
