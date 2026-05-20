.class public Lmiuix/preference/BaseCheckBoxPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "BaseCheckBoxPreference.java"

# interfaces
.implements Lmiuix/preference/PreferenceStyle;
.implements Lmiuix/preference/PreferenceAccessibility;


# instance fields
.field private mAccessibilityEnable:Z

.field private mCardEnable:Z

.field private mClickable:Z

.field private mTouchAnimationEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 40
    invoke-direct {p0, p1}, Lmiuix/preference/BaseCheckBoxPreference;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0, p2}, Lmiuix/preference/BaseCheckBoxPreference;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-direct {p0, p2}, Lmiuix/preference/BaseCheckBoxPreference;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 30
    invoke-direct {p0, p2}, Lmiuix/preference/BaseCheckBoxPreference;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 4

    .line 44
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/preference/R$attr;->preferenceCardStyleEnable:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 46
    invoke-static {}, Lmiuix/core/util/RomUtils;->getHyperOsVersion()I

    move-result v1

    if-le v1, v2, :cond_0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz p1, :cond_2

    .line 48
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lmiuix/preference/R$styleable;->BasePreference:[I

    invoke-virtual {v1, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 49
    sget v1, Lmiuix/preference/R$styleable;->BasePreference_clickable:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lmiuix/preference/BaseCheckBoxPreference;->mClickable:Z

    .line 50
    sget v1, Lmiuix/preference/R$styleable;->BasePreference_touchAnimationEnable:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lmiuix/preference/BaseCheckBoxPreference;->mTouchAnimationEnable:Z

    .line 51
    sget v1, Lmiuix/preference/R$styleable;->BasePreference_cardEnable:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/preference/BaseCheckBoxPreference;->mCardEnable:Z

    .line 52
    sget v0, Lmiuix/preference/R$styleable;->BasePreference_accessibilityEnable:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/preference/BaseCheckBoxPreference;->mAccessibilityEnable:Z

    .line 53
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    .line 55
    :cond_2
    iput-boolean v2, p0, Lmiuix/preference/BaseCheckBoxPreference;->mClickable:Z

    .line 56
    iput-boolean v2, p0, Lmiuix/preference/BaseCheckBoxPreference;->mTouchAnimationEnable:Z

    .line 57
    iput-boolean v0, p0, Lmiuix/preference/BaseCheckBoxPreference;->mCardEnable:Z

    .line 58
    iput-boolean v2, p0, Lmiuix/preference/BaseCheckBoxPreference;->mAccessibilityEnable:Z

    :goto_2
    return-void
.end method


# virtual methods
.method public enabledCardStyle()Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lmiuix/preference/BaseCheckBoxPreference;->mCardEnable:Z

    return p0
.end method

.method public isAccessibilityEnabled()Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lmiuix/preference/BaseCheckBoxPreference;->mAccessibilityEnable:Z

    return p0
.end method

.method public isTouchAnimationEnable()Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lmiuix/preference/BaseCheckBoxPreference;->mTouchAnimationEnable:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 75
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 76
    iget-boolean p0, p0, Lmiuix/preference/BaseCheckBoxPreference;->mClickable:Z

    invoke-virtual {p1, p0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method
