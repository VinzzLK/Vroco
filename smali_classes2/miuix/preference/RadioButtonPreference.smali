.class public Lmiuix/preference/RadioButtonPreference;
.super Lmiuix/preference/BaseCheckBoxPreference;
.source "RadioButtonPreference.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field private mChangeFromClick:Z

.field private mEnableFallbackLineSpacing:Z

.field private mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

.field private mItemView:Landroid/view/View;

.field private mTitleView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v0}, Lmiuix/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 80
    sget v0, Lmiuix/preference/R$attr;->radioButtonPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lmiuix/preference/BaseCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lmiuix/preference/RadioButtonPreference;->mEnableFallbackLineSpacing:Z

    .line 67
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method static synthetic access$000(Lmiuix/preference/RadioButtonPreference;)Landroid/view/View;
    .locals 0

    .line 38
    iget-object p0, p0, Lmiuix/preference/RadioButtonPreference;->mTitleView:Landroid/view/View;

    return-object p0
.end method

.method private setAccessibilityDelegate(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 151
    new-instance v0, Lmiuix/preference/RadioButtonPreference$1;

    invoke-direct {v0, p0, p2}, Lmiuix/preference/RadioButtonPreference$1;-><init>(Lmiuix/preference/RadioButtonPreference;Landroid/view/View;)V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private setButtonChecked(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 184
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 185
    instance-of p1, p0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz p1, :cond_2

    .line 186
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 187
    instance-of p1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p1, :cond_2

    .line 188
    check-cast p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p2, :cond_1

    .line 190
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 192
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    .line 194
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result p1

    if-nez p1, :cond_2

    .line 197
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 198
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public callChangeListener(Ljava/lang/Object;)Z
    .locals 3

    .line 209
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 210
    invoke-interface {v0, p0, p1}, Lmiuix/preference/OnPreferenceChangeInternalListener;->onPreferenceChangeInternal(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 212
    invoke-super {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-nez v1, :cond_2

    .line 213
    iget-boolean p1, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    if-eqz p1, :cond_2

    iput-boolean v2, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    :cond_2
    return v1
.end method

.method protected notifyChanged()V
    .locals 1

    .line 234
    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 235
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 236
    invoke-interface {v0, p0}, Lmiuix/preference/OnPreferenceChangeInternalListener;->notifyPreferenceChangeInternal(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public onAttached()V
    .locals 1

    .line 94
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    .line 95
    invoke-virtual {p0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v0, :cond_0

    .line 96
    sget v0, Lmiuix/preference/R$layout;->miuix_preference_flexible_radiobutton:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    goto :goto_0

    .line 98
    :cond_0
    sget v0, Lmiuix/preference/R$layout;->miuix_preference_radiobutton_two_state_background_flexible:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 117
    invoke-super {p0, p1}, Lmiuix/preference/BaseCheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 119
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 120
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreference;->mItemView:Landroid/view/View;

    const v0, 0x1020016

    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mTitleView:Landroid/view/View;

    .line 122
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 123
    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lmiuix/preference/RadioButtonPreference;->mEnableFallbackLineSpacing:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFallbackLineSpacing(Z)V

    .line 125
    :cond_0
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mTitleView:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_1

    .line 126
    check-cast v0, Landroid/widget/Checkable;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_1
    const v0, 0x1020010

    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 130
    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_2

    .line 131
    move-object v1, v0

    check-cast v1, Landroid/widget/Checkable;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_2
    const v1, 0x1020001

    .line 135
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 137
    instance-of v2, v1, Landroid/widget/CompoundButton;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 138
    move-object v2, v1

    check-cast v2, Landroid/widget/CompoundButton;

    iget-boolean v3, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    invoke-direct {p0, v2, v3}, Lmiuix/preference/RadioButtonPreference;->setButtonChecked(Landroid/widget/CompoundButton;Z)V

    const/4 v2, 0x0

    .line 139
    iput-boolean v2, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    .line 142
    :cond_3
    invoke-virtual {p0}, Lmiuix/preference/BaseCheckBoxPreference;->isAccessibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    .line 144
    invoke-virtual {v1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 146
    :cond_4
    invoke-direct {p0, p1, v0}, Lmiuix/preference/RadioButtonPreference;->setAccessibilityDelegate(Landroid/view/View;Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method protected onClick()V
    .locals 2

    const/4 v0, 0x1

    .line 219
    iput-boolean v0, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    .line 220
    invoke-super {p0}, Landroidx/preference/TwoStatePreference;->onClick()V

    .line 221
    iget-boolean v0, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    if-eqz v0, :cond_0

    .line 222
    iget-object p0, p0, Lmiuix/preference/RadioButtonPreference;->mItemView:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 223
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_NORMAL:I

    invoke-static {p0, v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public onDetached()V
    .locals 1

    .line 251
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    .line 252
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 253
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public queueIdle()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreference;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 242
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
