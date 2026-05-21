.class public Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;
.super Landroid/widget/LinearLayout;
.source "IconAndTitleShortcutMenuItemContainer.java"


# static fields
.field private static sNullLayoutMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mHasData:Z

.field private mIcon:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$59xnwPNH7jOBGHTzqNRGzaBJ19c(Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;Landroid/view/View$OnClickListener;Lcom/miui/home/launcher/ItemInfo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->lambda$bindShortcutMenuItem$0(Landroid/view/View$OnClickListener;Lcom/miui/home/launcher/ItemInfo;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 41
    :try_start_0
    const-class v0, Landroid/widget/TextView;

    const-string v1, "nullLayouts"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->sNullLayoutMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "IconAndTitleShortcutMenuItemContainer"

    const-string v2, "Failed to get TextView#nullLayouts() method"

    .line 44
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private bindIcon(Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;)V
    .locals 2

    .line 83
    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 84
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mIcon:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private calculateWordsWidth(Ljava/lang/CharSequence;)F
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 135
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method private changeMaxLines(I)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 106
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->nullLayouts()V

    :cond_0
    return-void
.end method

.method private getMenuItemTitleMaxWidth()I
    .locals 3

    .line 139
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07026a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 140
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070269

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 141
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070268

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 142
    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method private getSuitableTitle(Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;)Ljava/lang/CharSequence;
    .locals 2

    .line 126
    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getLongTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->calculateWordsWidth(Ljava/lang/CharSequence;)F

    move-result v1

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->getMenuItemTitleMaxWidth()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, v1, p0

    if-gtz p0, :cond_0

    return-object v0

    .line 130
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getShortTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private getViewHeight()I
    .locals 1

    .line 122
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070089

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private isTouchPointInView(II)Z
    .locals 1

    .line 179
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 180
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 181
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$bindShortcutMenuItem$0(Landroid/view/View$OnClickListener;Lcom/miui/home/launcher/ItemInfo;Landroid/view/View;)V
    .locals 0

    .line 72
    invoke-interface {p1, p3}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p2}, Lcom/miui/home/launcher/ItemInfo;->onLaunch()V

    .line 76
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/util/MainThreadHelper;->hideKeyboardAsync(Landroid/content/Context;Landroid/os/IBinder;)V

    return-void
.end method

.method private nullLayouts()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->sNullLayoutMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 114
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "IconAndTitleShortcutMenuItemContainer"

    const-string v1, "Failed to invoke TextView#nullLayouts() method"

    .line 116
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private setBlur()V
    .locals 2

    .line 185
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->resetBlurColor(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 186
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBlur(Landroid/view/View;I)V

    const/4 v0, 0x0

    .line 187
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBackgroundBlur(Landroid/view/View;I)V

    .line 188
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurRoundRect(Landroid/view/View;I)V

    .line 189
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07069e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurRadius(Landroid/view/View;I)V

    .line 190
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x14ffffff

    goto :goto_0

    :cond_0
    const/high16 v0, 0x14000000

    :goto_0
    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public bindShortcutMenuItem(Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 2

    .line 67
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->bindIcon(Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;)V

    .line 68
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->getSuitableTitle(Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    new-instance v0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;Landroid/view/View$OnClickListener;Lcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mHasData:Z

    return-void
.end method

.method public hasData()Z
    .locals 0

    .line 153
    iget-boolean p0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mHasData:Z

    return p0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 54
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0225

    .line 55
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a022b

    .line 56
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    .line 57
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    .line 94
    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getLineHeight(Landroid/widget/TextView;)I

    move-result v1

    if-lez v1, :cond_0

    .line 95
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v2

    if-nez v2, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->getViewHeight()I

    move-result v0

    div-int/2addr v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 97
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 99
    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->changeMaxLines(I)V

    .line 100
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 162
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->setBlur()V

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    .line 168
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->isTouchPointInView(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 169
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->clearAllBlur(Landroid/view/View;)V

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 172
    :cond_2
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->clearAllBlur(Landroid/view/View;)V

    .line 175
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mHasData:Z

    return-void
.end method

.method public setIconScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/IconAndTitleShortcutMenuItemContainer;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
