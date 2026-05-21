.class public Lmiuix/preference/SingleChoicePreference;
.super Lmiuix/preference/BaseCheckBoxPreference;
.source "SingleChoicePreference.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lmiuix/preference/FolmeAnimationController;
.implements Lmiuix/preference/PreferenceExtraPadding;


# instance fields
.field private mCardStyle:I

.field private mChangeFromClick:Z

.field private mContext:Landroid/content/Context;

.field private mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

.field private mIsCardStyleEnable:Z

.field private mItemView:Landroid/view/View;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lmiuix/preference/SingleChoicePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 45
    sget v0, Lmiuix/preference/R$attr;->singleChoicePreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/SingleChoicePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/preference/SingleChoicePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/preference/BaseCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    iput-object p1, p0, Lmiuix/preference/SingleChoicePreference;->mContext:Landroid/content/Context;

    .line 55
    sget-object v0, Lmiuix/preference/R$styleable;->ChoicePreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 57
    sget p3, Lmiuix/preference/R$styleable;->ChoicePreference_android_value:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lmiuix/preference/SingleChoicePreference;->mValue:Ljava/lang/String;

    .line 58
    sget p3, Lmiuix/preference/R$attr;->preferenceCardStyleEnable:I

    const/4 p4, 0x1

    invoke-static {p1, p3, p4}, Lmiuix/internal/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lmiuix/preference/SingleChoicePreference;->mCardStyle:I

    const/4 p3, 0x2

    if-eq p1, p3, :cond_1

    .line 60
    invoke-static {}, Lmiuix/core/util/RomUtils;->getHyperOsVersion()I

    move-result p1

    if-le p1, p4, :cond_0

    iget p1, p0, Lmiuix/preference/SingleChoicePreference;->mCardStyle:I

    if-ne p1, p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :cond_1
    :goto_0
    iput-boolean p4, p0, Lmiuix/preference/SingleChoicePreference;->mIsCardStyleEnable:Z

    .line 61
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private isDisableAllCardStyle()Z
    .locals 1

    .line 249
    iget p0, p0, Lmiuix/preference/SingleChoicePreference;->mCardStyle:I

    const/4 v0, -0x1

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setAccessibilityDelegate(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 125
    iget-object v0, p0, Lmiuix/preference/SingleChoicePreference;->mItemView:Landroid/view/View;

    new-instance v1, Lmiuix/preference/SingleChoicePreference$1;

    invoke-direct {v1, p0, p1, p2}, Lmiuix/preference/SingleChoicePreference$1;-><init>(Lmiuix/preference/SingleChoicePreference;Landroid/view/View;Landroid/view/View;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private setButtonChecked(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 158
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 159
    instance-of p1, p0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz p1, :cond_2

    .line 160
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 161
    instance-of p1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p1, :cond_2

    .line 162
    check-cast p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p2, :cond_1

    .line 164
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 166
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    .line 168
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result p1

    if-nez p1, :cond_2

    .line 171
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 172
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public callChangeListener(Ljava/lang/Object;)Z
    .locals 3

    .line 67
    iget-object v0, p0, Lmiuix/preference/SingleChoicePreference;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0, p0, p1}, Lmiuix/preference/OnPreferenceChangeInternalListener;->onPreferenceChangeInternal(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 70
    invoke-super {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-nez v1, :cond_2

    .line 71
    iget-boolean p1, p0, Lmiuix/preference/SingleChoicePreference;->mChangeFromClick:Z

    if-eqz p1, :cond_2

    iput-boolean v2, p0, Lmiuix/preference/SingleChoicePreference;->mChangeFromClick:Z

    :cond_2
    return v1
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 212
    iget-object p0, p0, Lmiuix/preference/SingleChoicePreference;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public isTouchAnimationEnable()Z
    .locals 1

    .line 227
    invoke-direct {p0}, Lmiuix/preference/SingleChoicePreference;->isDisableAllCardStyle()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lmiuix/preference/SingleChoicePreference;->mIsCardStyleEnable:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected notifyChanged()V
    .locals 1

    .line 197
    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 198
    iget-object v0, p0, Lmiuix/preference/SingleChoicePreference;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 199
    invoke-interface {v0, p0}, Lmiuix/preference/OnPreferenceChangeInternalListener;->notifyPreferenceChangeInternal(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 77
    invoke-super {p0, p1}, Lmiuix/preference/BaseCheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 78
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 79
    iput-object p1, p0, Lmiuix/preference/SingleChoicePreference;->mItemView:Landroid/view/View;

    .line 81
    invoke-direct {p0}, Lmiuix/preference/SingleChoicePreference;->isDisableAllCardStyle()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lmiuix/preference/SingleChoicePreference;->mIsCardStyleEnable:Z

    if-nez v0, :cond_1

    .line 82
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$attr;->isLightTheme:I

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    sget v2, Lmiuix/preference/R$drawable;->miuix_preference_single_choice_foregorund_light:I

    goto :goto_0

    .line 88
    :cond_0
    sget v2, Lmiuix/preference/R$drawable;->miuix_preference_single_choice_foregorund_dark:I

    .line 91
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lmiuix/preference/R$drawable;->miuix_preference_single_choice_background:I

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 92
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-static {v4, v2, v5}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 93
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 95
    invoke-virtual {p1, v2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v2, p0, Lmiuix/preference/SingleChoicePreference;->mItemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 98
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_1
    const v0, 0x1020016

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 102
    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_2

    .line 103
    move-object v2, v0

    check-cast v2, Landroid/widget/Checkable;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_2
    const v2, 0x1020010

    .line 105
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 106
    instance-of v3, v2, Landroid/widget/Checkable;

    if-eqz v3, :cond_3

    .line 107
    move-object v3, v2

    check-cast v3, Landroid/widget/Checkable;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_3
    const v3, 0x1020001

    .line 109
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 111
    instance-of v3, p1, Landroid/widget/CompoundButton;

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 112
    move-object v3, p1

    check-cast v3, Landroid/widget/CompoundButton;

    iget-boolean v4, p0, Lmiuix/preference/SingleChoicePreference;->mChangeFromClick:Z

    invoke-direct {p0, v3, v4}, Lmiuix/preference/SingleChoicePreference;->setButtonChecked(Landroid/widget/CompoundButton;Z)V

    .line 113
    iput-boolean v1, p0, Lmiuix/preference/SingleChoicePreference;->mChangeFromClick:Z

    .line 116
    :cond_4
    invoke-virtual {p0}, Lmiuix/preference/BaseCheckBoxPreference;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_5

    const/4 v1, 0x2

    .line 118
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 120
    :cond_5
    invoke-direct {p0, v0, v2}, Lmiuix/preference/SingleChoicePreference;->setAccessibilityDelegate(Landroid/view/View;Landroid/view/View;)V

    :cond_6
    return-void
.end method

.method protected onClick()V
    .locals 2

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lmiuix/preference/SingleChoicePreference;->mChangeFromClick:Z

    .line 183
    invoke-super {p0}, Landroidx/preference/TwoStatePreference;->onClick()V

    .line 184
    iget-boolean v0, p0, Lmiuix/preference/SingleChoicePreference;->mChangeFromClick:Z

    if-eqz v0, :cond_0

    .line 185
    iget-object p0, p0, Lmiuix/preference/SingleChoicePreference;->mItemView:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 186
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_NORMAL:I

    invoke-static {p0, v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public onPreferenceExtraPadding(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 9

    .line 232
    iget-boolean p1, p0, Lmiuix/preference/SingleChoicePreference;->mIsCardStyleEnable:Z

    if-nez p1, :cond_0

    .line 233
    iget-object p1, p0, Lmiuix/preference/SingleChoicePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/preference/R$dimen;->miuix_preference_item_margin_start:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 235
    iget-object v0, p0, Lmiuix/preference/SingleChoicePreference;->mItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x0

    add-int v7, p1, p2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, v7

    move v5, v7

    .line 236
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 239
    iget-object p0, p0, Lmiuix/preference/SingleChoicePreference;->mItemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 240
    instance-of p1, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz p1, :cond_0

    .line 241
    move-object v3, p0

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v5, v7

    .line 242
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 217
    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lmiuix/preference/SingleChoicePreference;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lmiuix/preference/SingleChoicePreference;->mValue:Ljava/lang/String;

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 222
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/preference/SingleChoicePreference;->setChecked(Z)V

    return-void
.end method
