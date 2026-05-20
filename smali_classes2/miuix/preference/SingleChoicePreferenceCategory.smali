.class public Lmiuix/preference/SingleChoicePreferenceCategory;
.super Landroidx/preference/PreferenceCategory;
.source "SingleChoicePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/preference/SingleChoicePreferenceCategory$SavedState;,
        Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;,
        Lmiuix/preference/SingleChoicePreferenceCategory$PreferenceSingleChoiceHelper;
    }
.end annotation


# instance fields
.field private mCardGroupEnabled:Z

.field private mCheckedChoice:Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;

.field private mCheckedPosition:I

.field private mContext:Landroid/content/Context;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

.field private mSummaries:[Ljava/lang/CharSequence;

.field private mValue:Ljava/lang/String;

.field private mValueSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 71
    sget v0, Lmiuix/preference/R$attr;->choiceCategoryPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/SingleChoicePreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/preference/SingleChoicePreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mCheckedPosition:I

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mCheckedChoice:Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;

    .line 28
    new-instance v0, Lmiuix/preference/SingleChoicePreferenceCategory$1;

    invoke-direct {v0, p0}, Lmiuix/preference/SingleChoicePreferenceCategory$1;-><init>(Lmiuix/preference/SingleChoicePreferenceCategory;)V

    iput-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    .line 80
    iput-object p1, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mContext:Landroid/content/Context;

    .line 81
    sget-object v0, Lmiuix/preference/R$styleable;->ChoicePreferenceCategory:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 83
    sget p2, Lmiuix/preference/R$styleable;->ChoicePreferenceCategory_android_entries:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mEntries:[Ljava/lang/CharSequence;

    .line 84
    sget p2, Lmiuix/preference/R$styleable;->ChoicePreferenceCategory_android_entryValues:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mEntryValues:[Ljava/lang/CharSequence;

    .line 85
    sget p2, Lmiuix/preference/R$styleable;->ChoicePreferenceCategory_summaries:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mSummaries:[Ljava/lang/CharSequence;

    .line 86
    sget p2, Lmiuix/preference/R$styleable;->ChoicePreferenceCategory_cardGroupEnabled:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mCardGroupEnabled:Z

    .line 87
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lmiuix/preference/SingleChoicePreferenceCategory;Landroidx/preference/Preference;Ljava/lang/Object;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lmiuix/preference/SingleChoicePreferenceCategory;->checkPreferenceByInternal(Landroidx/preference/Preference;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lmiuix/preference/SingleChoicePreferenceCategory;Landroidx/preference/Preference;)Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->parse(Landroidx/preference/Preference;)Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/preference/SingleChoicePreferenceCategory;Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->updateCheckedPreference(Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;)V

    return-void
.end method

.method static synthetic access$300(Lmiuix/preference/SingleChoicePreferenceCategory;Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->updateCheckedPosition(Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;)V

    return-void
.end method

.method static synthetic access$400(Lmiuix/preference/SingleChoicePreferenceCategory;)I
    .locals 0

    .line 17
    iget p0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mCheckedPosition:I

    return p0
.end method

.method static synthetic access$500(Lmiuix/preference/SingleChoicePreferenceCategory;Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lmiuix/preference/SingleChoicePreferenceCategory;->updateCheckedValue(Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;I)V

    return-void
.end method

.method private callChangeListenerByInternal(Ljava/lang/Object;Landroidx/preference/Preference;)Z
    .locals 0

    .line 62
    invoke-virtual {p2}, Landroidx/preference/Preference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 63
    invoke-virtual {p2}, Landroidx/preference/Preference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

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

.method private checkPreferenceByInternal(Landroidx/preference/Preference;Ljava/lang/Object;)V
    .locals 2

    .line 53
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 55
    :goto_0
    iget-object v1, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mCheckedChoice:Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;->getPreference()Landroidx/preference/Preference;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 56
    :cond_1
    invoke-direct {p0, p2, v0}, Lmiuix/preference/SingleChoicePreferenceCategory;->callChangeListenerByInternal(Ljava/lang/Object;Landroidx/preference/Preference;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 57
    invoke-virtual {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->setCheckedPreference(Landroidx/preference/Preference;)V

    :cond_2
    return-void
.end method

.method private clearChecked()V
    .locals 2

    .line 168
    iget-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mCheckedChoice:Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 169
    invoke-virtual {v0, v1}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mCheckedChoice:Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;

    const/4 v0, -0x1

    .line 172
    iput v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mCheckedPosition:I

    return-void
.end method

.method private constructEntries()V
    .locals 6

    .line 186
    iget-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 187
    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 189
    iget-object v2, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mEntries:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    check-cast v2, Ljava/lang/String;

    .line 190
    iget-object v3, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v3, v3, v1

    check-cast v3, Ljava/lang/String;

    .line 191
    new-instance v4, Lmiuix/preference/SingleChoicePreference;

    iget-object v5, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lmiuix/preference/SingleChoicePreference;-><init>(Landroid/content/Context;)V

    .line 192
    invoke-virtual {v4, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {v4, v3}, Lmiuix/preference/SingleChoicePreference;->setValue(Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mSummaries:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 195
    aget-object v2, v2, v1

    check-cast v2, Ljava/lang/String;

    .line 196
    invoke-virtual {v4, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 198
    :cond_0
    invoke-virtual {p0, v4}, Lmiuix/preference/SingleChoicePreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private init()V
    .locals 0

    .line 182
    invoke-direct {p0}, Lmiuix/preference/SingleChoicePreferenceCategory;->constructEntries()V

    return-void
.end method

.method private parse(Landroidx/preference/Preference;)Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;
    .locals 0

    .line 289
    instance-of p0, p1, Lmiuix/preference/SingleChoicePreference;

    if-eqz p0, :cond_0

    .line 290
    new-instance p0, Lmiuix/preference/SingleChoicePreferenceCategory$PreferenceSingleChoiceHelper;

    check-cast p1, Lmiuix/preference/SingleChoicePreference;

    invoke-direct {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory$PreferenceSingleChoiceHelper;-><init>(Lmiuix/preference/SingleChoicePreference;)V

    return-object p0

    .line 292
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only SingleChoicePreference can be added to SingleChoicePreference2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setCheckedPreferenceInternal(Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;)V
    .locals 0

    const/4 p0, 0x1

    .line 257
    invoke-virtual {p1, p0}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    return-void
.end method

.method private updateCheckedPosition(Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;)V
    .locals 4

    .line 270
    invoke-virtual {p1}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 273
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 274
    invoke-virtual {p1}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;->getPreference()Landroidx/preference/Preference;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 275
    iput v1, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mCheckedPosition:I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private updateCheckedPreference(Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;)V
    .locals 2

    .line 261
    invoke-virtual {p1}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mCheckedChoice:Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;->getPreference()Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p1}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;->getPreference()Landroidx/preference/Preference;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mCheckedChoice:Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    .line 265
    :cond_0
    iput-object p1, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mCheckedChoice:Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;

    :cond_1
    return-void
.end method

.method private updateCheckedValue(Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;I)V
    .locals 0

    .line 283
    invoke-virtual {p1}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 284
    invoke-virtual {p1}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addPreference(Landroidx/preference/Preference;)Z
    .locals 2

    .line 222
    invoke-direct {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->parse(Landroidx/preference/Preference;)Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;

    move-result-object v0

    .line 223
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 225
    iget-object v1, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    invoke-virtual {v0, v1}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;->setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V

    .line 227
    :cond_0
    invoke-virtual {v0}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 228
    iget-object v1, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mCheckedChoice:Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;

    if-nez v1, :cond_1

    .line 231
    iput-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mCheckedChoice:Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;

    goto :goto_0

    .line 229
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already has a checked item, please check state of new add preference"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 233
    :cond_2
    :goto_0
    iget-object p0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mValue:Ljava/lang/String;

    invoke-virtual {v0}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    .line 234
    invoke-virtual {v0, p0}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    :cond_3
    return p1
.end method

.method public getCardGroupEnabled()Z
    .locals 0

    .line 244
    iget-boolean p0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mCardGroupEnabled:Z

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 217
    iget-object p0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public onAttached()V
    .locals 0

    .line 177
    invoke-super {p0}, Landroidx/preference/PreferenceGroup;->onAttached()V

    .line 178
    invoke-direct {p0}, Lmiuix/preference/SingleChoicePreferenceCategory;->init()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 328
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lmiuix/preference/SingleChoicePreferenceCategory$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 333
    :cond_0
    check-cast p1, Lmiuix/preference/SingleChoicePreferenceCategory$SavedState;

    .line 334
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 335
    iget-object p1, p1, Lmiuix/preference/SingleChoicePreferenceCategory$SavedState;->mValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->setValue(Ljava/lang/String;)V

    return-void

    .line 330
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 316
    invoke-super {p0}, Landroidx/preference/PreferenceGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 317
    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 321
    :cond_0
    new-instance v1, Lmiuix/preference/SingleChoicePreferenceCategory$SavedState;

    invoke-direct {v1, v0}, Lmiuix/preference/SingleChoicePreferenceCategory$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 322
    invoke-virtual {p0}, Lmiuix/preference/SingleChoicePreferenceCategory;->getValue()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lmiuix/preference/SingleChoicePreferenceCategory$SavedState;->mValue:Ljava/lang/String;

    return-object v1
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .locals 0

    .line 253
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public removePreference(Landroidx/preference/Preference;)Z
    .locals 0

    .line 240
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public setCheckedPreference(Landroidx/preference/Preference;)V
    .locals 1

    if-nez p1, :cond_0

    .line 154
    invoke-direct {p0}, Lmiuix/preference/SingleChoicePreferenceCategory;->clearChecked()V

    return-void

    .line 157
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->parse(Landroidx/preference/Preference;)Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 161
    :cond_1
    invoke-direct {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->setCheckedPreferenceInternal(Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;)V

    .line 162
    invoke-direct {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->updateCheckedPreference(Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;)V

    .line 163
    invoke-direct {p0, p1}, Lmiuix/preference/SingleChoicePreferenceCategory;->updateCheckedPosition(Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;)V

    .line 164
    iget v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mCheckedPosition:I

    invoke-direct {p0, p1, v0}, Lmiuix/preference/SingleChoicePreferenceCategory;->updateCheckedValue(Lmiuix/preference/SingleChoicePreferenceCategory$SingleChoiceHelper;I)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3

    .line 205
    iget-object v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mValue:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 206
    iget-boolean v2, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mValueSet:Z

    if-nez v2, :cond_1

    .line 207
    :cond_0
    iput-object p1, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mValue:Ljava/lang/String;

    .line 208
    iput-boolean v1, p0, Lmiuix/preference/SingleChoicePreferenceCategory;->mValueSet:Z

    .line 209
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)Z

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_1
    return-void
.end method
