.class public Lmiuix/preference/CommentPreference;
.super Lmiuix/preference/BasePreference;
.source "CommentPreference.java"


# instance fields
.field private mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 29
    sget v0, Lmiuix/preference/R$attr;->commentPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/CommentPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 25
    sget v0, Lmiuix/preference/R$style;->Miuix_Preference_CommentPreference:I

    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/preference/CommentPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/preference/BasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lmiuix/preference/CommentPreference;->mText:Ljava/lang/CharSequence;

    .line 38
    sget-object v0, Lmiuix/preference/R$styleable;->CommentPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 41
    sget p3, Lmiuix/preference/R$styleable;->CommentPreference_android_text:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/CommentPreference;->mText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/CommentPreference;->mText:Ljava/lang/CharSequence;

    .line 47
    :goto_0
    sget p1, Lmiuix/preference/R$styleable;->BasePreference_clickable:I

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/preference/BasePreference;->setClickable(Z)V

    .line 48
    sget p1, Lmiuix/preference/R$styleable;->BasePreference_cardEnable:I

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/preference/BasePreference;->setCardStyleEnable(Z)V

    .line 49
    sget p1, Lmiuix/preference/R$styleable;->BasePreference_touchAnimationEnable:I

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/preference/BasePreference;->setTouchAnimationEnable(Z)V

    .line 50
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 71
    invoke-super {p0, p1}, Lmiuix/preference/BasePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 72
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 73
    sget v0, Lmiuix/preference/R$id;->content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 75
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 76
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    sget v4, Lmiuix/preference/R$attr;->preferenceCardStyleEnable:I

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-virtual {v1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 77
    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    .line 79
    invoke-static {}, Lmiuix/core/util/RomUtils;->getHyperOsVersion()I

    move-result v3

    if-le v3, v2, :cond_0

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 82
    sget v1, Lmiuix/preference/R$dimen;->miuix_preference_comment_margin_vertical_card:I

    goto :goto_1

    .line 84
    :cond_2
    sget v1, Lmiuix/preference/R$dimen;->miuix_preference_comment_margin_vertical_traditional:I

    .line 86
    :goto_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 87
    invoke-virtual {v0, v5, v1, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 88
    iget-object p0, p0, Lmiuix/preference/CommentPreference;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
