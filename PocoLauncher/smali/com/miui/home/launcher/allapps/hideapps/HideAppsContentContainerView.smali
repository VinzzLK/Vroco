.class public Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;
.super Landroid/widget/RelativeLayout;
.source "HideAppsContentContainerView.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;


# instance fields
.field private context:Landroid/content/Context;

.field private currentPage:I

.field private mHideAppsContentSwitcher:Lcom/miui/home/launcher/widget/HideAppsContentSwitcher;

.field private mHideAppsContentView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;

.field private mHideAppsSelectView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;

.field private mLeftBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

.field private mRightBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

.field private mTitleBarRl:Landroid/widget/RelativeLayout;

.field private mTitleContentSwitcher:Landroid/widget/TextSwitcher;


# direct methods
.method public static synthetic $r8$lambda$8aWAyeHMdFhJZjJNNeBsEEwlu2A(Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->lambda$onFinishInflate$0()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GeRmFN-yg27ElkWZ6rXwo38uPGk(Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->lambda$onFinishInflate$1()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Lx7R5rphmBiU2QdGsrp7Kb5PpBE(Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->lambda$onFinishInflate$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RhICZUlKvVL9FFa9pVltlxDpwiI(Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->lambda$onFinishInflate$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rhXeDWNReVUCn_GstgheUOfE1NI(Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->lambda$onFinishInflate$2()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 40
    iput p2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->currentPage:I

    .line 63
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->context:Landroid/content/Context;

    return-void
.end method

.method private getCurrentView()Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;
    .locals 1

    .line 250
    iget v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->currentPage:I

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->getView(I)Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;

    move-result-object p0

    return-object p0
.end method

.method private getView(I)Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 243
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsSelectView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;

    return-object p0

    .line 245
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Invalid page!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 241
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsContentView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;

    return-object p0
.end method

.method private synthetic lambda$onFinishInflate$0()Landroid/view/View;
    .locals 2

    .line 83
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->context:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d007c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onFinishInflate$1()Landroid/view/View;
    .locals 2

    .line 84
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->context:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d007b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onFinishInflate$2()Landroid/view/View;
    .locals 2

    .line 85
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->context:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d007b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onFinishInflate$3(Landroid/view/View;)V
    .locals 1

    .line 88
    iget p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->currentPage:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 89
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsSelectView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->onTitleBarLeftBtnClick()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 91
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsContentView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;->onTitleBarLeftBtnClick()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onFinishInflate$4(Landroid/view/View;)V
    .locals 1

    .line 95
    iget p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->currentPage:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 96
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsSelectView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->onTitleBarRightBtnClick()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 98
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsContentView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;->onTitleBarRightBtnClick()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public changeToPage(I)V
    .locals 1

    const/4 v0, 0x1

    .line 198
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->changeToPage(IZ)V

    return-void
.end method

.method public changeToPage(IZ)V
    .locals 2

    .line 150
    iget v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->currentPage:I

    if-ne v0, p1, :cond_0

    return-void

    .line 153
    :cond_0
    iput p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->currentPage:I

    if-nez p2, :cond_1

    .line 156
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mTitleContentSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {p2}, Landroid/widget/TextSwitcher;->reset()V

    .line 157
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mLeftBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    invoke-virtual {p2}, Landroid/widget/ViewSwitcher;->reset()V

    .line 158
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mRightBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    invoke-virtual {p2}, Landroid/widget/ViewSwitcher;->reset()V

    .line 159
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsContentSwitcher:Lcom/miui/home/launcher/widget/HideAppsContentSwitcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/widget/HideAppsContentSwitcher;->reset()V

    .line 161
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 162
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f060056

    goto :goto_0

    :cond_2
    const v0, 0x7f060055

    .line 161
    :goto_0
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 163
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 164
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f060050

    goto :goto_1

    :cond_3
    const v1, 0x7f06004f

    .line 163
    :goto_1
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    goto/16 :goto_2

    .line 181
    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsSelectView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->onShow()V

    .line 182
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsContentView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;->onHide()V

    .line 186
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mLeftBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;->setPatternColor(I)V

    .line 187
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mRightBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;->setPatternColor(I)V

    .line 188
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mLeftBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    const v0, 0x7f0b0049

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;->setPattern(I)V

    .line 189
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mRightBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    const v0, 0x7f0b0017

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;->setPattern(I)V

    .line 190
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mLeftBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 191
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mRightBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 192
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsContentSwitcher:Lcom/miui/home/launcher/widget/HideAppsContentSwitcher;

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/widget/HideAppsContentSwitcher;->changeToView(I)V

    goto :goto_2

    .line 167
    :cond_5
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsSelectView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->onHide()V

    .line 168
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsContentView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;->onShow()V

    .line 170
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mTitleContentSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {p1}, Landroid/widget/TextSwitcher;->getNextView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/recents/views/MarqueeTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mTitleContentSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f100254

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mLeftBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;->setPatternColor(I)V

    .line 173
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mRightBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;->setPatternColor(I)V

    .line 174
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mLeftBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    const p2, 0x7f0b004c

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;->setPattern(I)V

    .line 175
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mRightBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    const p2, 0x7f0b0009

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;->setPattern(I)V

    .line 176
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mLeftBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f10025a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ViewSwitcher;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 177
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mRightBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f10025d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ViewSwitcher;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 178
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsContentSwitcher:Lcom/miui/home/launcher/widget/HideAppsContentSwitcher;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/widget/HideAppsContentSwitcher;->changeToView(I)V

    :goto_2
    return-void
.end method

.method public getHideApps()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 231
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsContentView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->getApps()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSearchBarCallback()Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsSelectView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;

    return-object p0
.end method

.method public initPage()V
    .locals 5

    const/4 v0, 0x0

    .line 114
    iput v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->currentPage:I

    .line 115
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 116
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f060056

    goto :goto_0

    :cond_0
    const v2, 0x7f060055

    .line 115
    :goto_0
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 117
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 118
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f060050

    goto :goto_1

    :cond_1
    const v3, 0x7f06004f

    .line 117
    :goto_1
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 119
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mTitleContentSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v3}, Landroid/widget/TextSwitcher;->getNextView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/MarqueeTextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mTitleContentSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100254

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mLeftBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;->setPatternColor(I)V

    .line 122
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mRightBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;->setPatternColor(I)V

    .line 123
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mLeftBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    const v2, 0x7f0b004c

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;->setPattern(I)V

    .line 124
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mRightBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    const v2, 0x7f0b0009

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;->setPattern(I)V

    .line 125
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mLeftBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10025a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewSwitcher;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mRightBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10025d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewSwitcher;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 127
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsContentSwitcher:Lcom/miui/home/launcher/widget/HideAppsContentSwitcher;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/HideAppsContentSwitcher;->changeToView(I)V

    return-void
.end method

.method public isHideSearchShow()Z
    .locals 0

    .line 336
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsSelectView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->isSearchContainerShow()Z

    move-result p0

    return p0
.end method

.method public isShowSearchBar()Z
    .locals 1

    .line 340
    iget p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->currentPage:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onEnter()V
    .locals 2

    .line 265
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->getCurrentView()Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;->onEnter()V

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "visibility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HideAppsContentContain"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onExit()V
    .locals 0

    .line 271
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->getCurrentView()Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;

    move-result-object p0

    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;->onExit()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 68
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a01de

    .line 70
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mTitleBarRl:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a03eb

    .line 71
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextSwitcher;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mTitleContentSwitcher:Landroid/widget/TextSwitcher;

    const v0, 0x7f0a00c9

    .line 72
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mLeftBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    const v0, 0x7f0a00cb

    .line 73
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mRightBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    .line 75
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mTitleContentSwitcher:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->context:Landroid/content/Context;

    const v2, 0x7f010044

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/content/Context;I)V

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mLeftBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/content/Context;I)V

    .line 77
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mRightBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/content/Context;I)V

    .line 79
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mTitleContentSwitcher:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->context:Landroid/content/Context;

    const v2, 0x7f010045

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mLeftBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mRightBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mTitleContentSwitcher:Landroid/widget/TextSwitcher;

    new-instance v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mLeftBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    new-instance v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mRightBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    new-instance v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mLeftBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    new-instance v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mRightBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    new-instance v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0075

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsContentView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;

    .line 104
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0078

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsSelectView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;

    const v0, 0x7f0a01d4

    .line 105
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/widget/HideAppsContentSwitcher;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsContentSwitcher:Lcom/miui/home/launcher/widget/HideAppsContentSwitcher;

    .line 106
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsContentView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsSelectView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/widget/HideAppsContentSwitcher;->initialize(Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;)V

    .line 107
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsContentSwitcher:Lcom/miui/home/launcher/widget/HideAppsContentSwitcher;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->context:Landroid/content/Context;

    const v2, 0x7f010042

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/content/Context;I)V

    .line 108
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsContentSwitcher:Lcom/miui/home/launcher/widget/HideAppsContentSwitcher;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->context:Landroid/content/Context;

    const v2, 0x7f010043

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    .line 110
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->initPage()V

    return-void
.end method

.method public onShow()V
    .locals 0

    .line 255
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->getCurrentView()Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;

    move-result-object p0

    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;->onShow()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsContentSwitcher:Lcom/miui/home/launcher/widget/HideAppsContentSwitcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/HideAppsContentSwitcher;->reset()V

    .line 278
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mLeftBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->reset()V

    .line 279
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mRightBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->reset()V

    .line 280
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mTitleContentSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v0}, Landroid/widget/TextSwitcher;->reset()V

    .line 281
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->initPage()V

    .line 283
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsContentView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;->reset()V

    .line 284
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsSelectView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->reset()V

    return-void
.end method

.method public setApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 205
    invoke-static {p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->filterShowingProgressApps(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 206
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsSelectView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->setApps(Ljava/util/List;)V

    .line 207
    invoke-static {p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->findHideApps(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 208
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsContentView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;->setApps(Ljava/util/List;)V

    return-void
.end method

.method public setHideApps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 235
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsContentView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;->setApps(Ljava/util/List;)V

    return-void
.end method

.method public setTitleText(Ljava/lang/String;Z)V
    .locals 2

    .line 131
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 132
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f060056

    goto :goto_0

    :cond_0
    const v1, 0x7f060055

    .line 131
    :goto_0
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 133
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mTitleContentSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v1}, Landroid/widget/TextSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/views/MarqueeTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    if-nez p2, :cond_1

    .line 135
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mTitleContentSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {p0, p1}, Landroid/widget/TextSwitcher;->setCurrentText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 137
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mTitleContentSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {p0, p1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public setUp(Lcom/miui/home/launcher/allapps/AllAppsContainerView;)V
    .locals 3

    .line 142
    new-instance v0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;-><init>()V

    .line 143
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mTitleBarRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->setupView(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)V

    .line 144
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsContentView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;

    invoke-virtual {v1, p0, p1, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;->setUp(Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;Lcom/miui/home/launcher/allapps/AllAppsContainerView;Lcom/miui/home/launcher/allapps/category/HeaderElevationController;)V

    .line 145
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsSelectView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;

    invoke-virtual {v1, p0, p1, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentBaseView;->setUp(Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;Lcom/miui/home/launcher/allapps/AllAppsContainerView;Lcom/miui/home/launcher/allapps/category/HeaderElevationController;)V

    return-void
.end method

.method public shouldContainerHandleTouchEventBySelf()Z
    .locals 0

    .line 289
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->getCurrentView()Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;

    move-result-object p0

    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;->shouldContainerHandleTouchEventBySelf()Z

    move-result p0

    return p0
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 294
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->getCurrentView()Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public updateColorForUiMode()V
    .locals 3

    .line 312
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06006a

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 314
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mTitleBarRl:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 315
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsContentSwitcher:Lcom/miui/home/launcher/widget/HideAppsContentSwitcher;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setBackgroundColor(I)V

    .line 316
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mTitleContentSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v0}, Landroid/widget/TextSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/MarqueeTextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060056

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 317
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mLeftBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060050

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;->setCurrentPatternColor(I)V

    .line 318
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mRightBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;->setCurrentPatternColor(I)V

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060089

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 321
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mTitleBarRl:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 322
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsContentSwitcher:Lcom/miui/home/launcher/widget/HideAppsContentSwitcher;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060027

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setBackgroundColor(I)V

    .line 323
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mTitleContentSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v0}, Landroid/widget/TextSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/MarqueeTextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060055

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 324
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mLeftBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06004f

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;->setCurrentPatternColor(I)V

    .line 325
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mRightBtnSwitcher:Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/TypefaceIconSwitcher;->setCurrentPatternColor(I)V

    .line 327
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsContentView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;->updateColorForUiMode()V

    .line 328
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentContainerView;->mHideAppsSelectView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;->updateColorForUiMode()V

    return-void
.end method
