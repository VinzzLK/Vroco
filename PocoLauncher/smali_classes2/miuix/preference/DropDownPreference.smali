.class public Lmiuix/preference/DropDownPreference;
.super Lmiuix/preference/BasePreference;
.source "DropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;,
        Lmiuix/preference/DropDownPreference$PreferenceCheckedProvider;,
        Lmiuix/preference/DropDownPreference$SavedState;
    }
.end annotation


# static fields
.field private static final ADAPTER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final EMPTY:[Ljava/lang/CharSequence;


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;

.field private mContentAdapter:Landroid/widget/ArrayAdapter;

.field private mDimAmount:F

.field private mDimVisible:Z

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryIcons:[Landroid/graphics/drawable/Drawable;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mIconOnlyEnabled:Z

.field private final mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mLargeFont:Z

.field private mNotifyHandler:Landroid/os/Handler;

.field private mSpinner:Lmiuix/appcompat/widget/Spinner;

.field private mValue:Ljava/lang/String;

.field private mValueSet:Z

.field private mViewHolder:Landroidx/preference/PreferenceViewHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    .line 44
    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-class v3, Landroid/util/AttributeSet;

    aput-object v3, v0, v1

    sput-object v0, Lmiuix/preference/DropDownPreference;->ADAPTER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    new-array v0, v2, [Ljava/lang/CharSequence;

    .line 46
    sput-object v0, Lmiuix/preference/DropDownPreference;->EMPTY:[Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, v0}, Lmiuix/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 113
    sget v0, Lmiuix/preference/R$attr;->dropdownPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 121
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/preference/BasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lmiuix/preference/DropDownPreference;->mLargeFont:Z

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 60
    iput v1, p0, Lmiuix/preference/DropDownPreference;->mDimAmount:F

    const/4 v1, 0x1

    .line 61
    iput-boolean v1, p0, Lmiuix/preference/DropDownPreference;->mDimVisible:Z

    .line 62
    iput-boolean v0, p0, Lmiuix/preference/DropDownPreference;->mIconOnlyEnabled:Z

    .line 64
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lmiuix/preference/DropDownPreference;->mNotifyHandler:Landroid/os/Handler;

    .line 66
    new-instance v2, Lmiuix/preference/DropDownPreference$1;

    invoke-direct {v2, p0}, Lmiuix/preference/DropDownPreference$1;-><init>(Lmiuix/preference/DropDownPreference;)V

    iput-object v2, p0, Lmiuix/preference/DropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 122
    sget-object v2, Lmiuix/preference/R$styleable;->DropDownPreference:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 124
    sget v3, Lmiuix/preference/R$styleable;->DropDownPreference_adapter:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 125
    sget v4, Lmiuix/preference/R$styleable;->DropDownPreference_dimVisible:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 126
    sget v4, Lmiuix/preference/R$styleable;->DropDownPreference_iconOnlyEnabled:I

    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/preference/DropDownPreference;->mIconOnlyEnabled:Z

    .line 127
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-direct {p0, p1, p2, v3}, Lmiuix/preference/DropDownPreference;->initAdapter(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    goto :goto_0

    .line 132
    :cond_0
    new-instance v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    invoke-direct {v0, p1, p2, p3, p4}, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    .line 134
    :goto_0
    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->createAdapter()Landroid/widget/ArrayAdapter;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 135
    invoke-direct {p0}, Lmiuix/preference/DropDownPreference;->constructEntries()V

    .line 136
    invoke-virtual {p0, v1}, Lmiuix/preference/DropDownPreference;->setDimVisible(Z)V

    return-void
.end method

.method static synthetic access$000(Lmiuix/preference/DropDownPreference;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lmiuix/preference/DropDownPreference;->splitSpinnerTextAtLargeFont(I)V

    return-void
.end method

.method static synthetic access$100(Lmiuix/preference/DropDownPreference;)[Ljava/lang/CharSequence;
    .locals 0

    .line 40
    iget-object p0, p0, Lmiuix/preference/DropDownPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/preference/DropDownPreference;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lmiuix/preference/DropDownPreference;->mNotifyHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/preference/DropDownPreference;)Landroid/widget/ArrayAdapter;
    .locals 0

    .line 40
    iget-object p0, p0, Lmiuix/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lmiuix/preference/DropDownPreference;Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lmiuix/preference/DropDownPreference;->showSelectedItemAtLargeFont(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method static synthetic access$500(Lmiuix/preference/DropDownPreference;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lmiuix/preference/DropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method static synthetic access$600(Lmiuix/preference/DropDownPreference;)Lmiuix/appcompat/widget/Spinner;
    .locals 0

    .line 40
    iget-object p0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    return-object p0
.end method

.method private constructEntries()V
    .locals 4

    .line 159
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    instance-of v1, v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    if-eqz v1, :cond_0

    .line 160
    check-cast v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    invoke-virtual {v0}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 161
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    check-cast v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 162
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    check-cast v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    invoke-virtual {v0}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->getEntryIcons()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->mEntryIcons:[Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 164
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    .line 165
    iget-object v1, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lmiuix/preference/DropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 167
    iget-object v2, p0, Lmiuix/preference/DropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    iget-object v3, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_1
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->mEntryValues:[Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->mEntryIcons:[Landroid/graphics/drawable/Drawable;

    :goto_1
    return-void
.end method

.method private disableSpinnerClick(Lmiuix/appcompat/widget/Spinner;)V
    .locals 0

    const/4 p0, 0x0

    .line 326
    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setClickable(Z)V

    .line 327
    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setLongClickable(Z)V

    .line 329
    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setContextClickable(Z)V

    return-void
.end method

.method private findSpinnerIndexOfValue(Ljava/lang/String;)I
    .locals 3

    .line 565
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 566
    :goto_0
    iget-object v1, p0, Lmiuix/preference/DropDownPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 567
    aget-object v1, v1, v0

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private initAdapter(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/widget/ArrayAdapter;
    .locals 2

    .line 184
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 186
    invoke-virtual {p0, p3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-class v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 189
    sget-object v0, Lmiuix/preference/DropDownPreference;->ADAPTER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 190
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 192
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 193
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ArrayAdapter;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 201
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find Adapter: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 199
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t access non-public constructor "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 197
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not instantiate the Adapter: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 195
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error creating Adapter "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private replaceLayoutAtLargeFont(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 396
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 398
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of p1, p1, Lmiuix/flexible/view/HyperCellLayout;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lmiuix/preference/DropDownPreference;->mLargeFont:Z

    if-eqz p1, :cond_1

    .line 399
    new-instance p1, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/preference/R$layout;->miuix_appcompat_simple_spinner_flexible_layout_integrated:I

    iget-object v2, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    new-instance v3, Lmiuix/preference/DropDownPreference$PreferenceCheckedProvider;

    invoke-direct {v3, p0, v2}, Lmiuix/preference/DropDownPreference$PreferenceCheckedProvider;-><init>(Lmiuix/preference/DropDownPreference;Landroid/widget/ArrayAdapter;)V

    invoke-direct {p1, v0, v1, v2, v3}, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;-><init>(Landroid/content/Context;ILandroid/widget/ArrayAdapter;Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;)V

    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    :cond_1
    return-void
.end method

.method private showSelectedItemAtLargeFont(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 406
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 408
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lmiuix/flexible/view/HyperCellLayout;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmiuix/preference/DropDownPreference;->mLargeFont:Z

    if-eqz v0, :cond_1

    const v0, 0x1020014

    .line 409
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 411
    iget-object p0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private splitSpinnerTextAtLargeFont(I)V
    .locals 3

    .line 93
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mViewHolder:Landroidx/preference/PreferenceViewHolder;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 94
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v0, Lmiuix/flexible/view/HyperCellLayout;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lmiuix/preference/DropDownPreference;->mLargeFont:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    if-ltz p1, :cond_1

    .line 96
    iget-object p0, p0, Lmiuix/preference/DropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz p0, :cond_1

    array-length v2, p0

    if-ge p1, v2, :cond_1

    .line 97
    aget-object v1, p0, p1

    :cond_1
    const p0, 0x1020014

    .line 100
    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_2

    .line 103
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method


# virtual methods
.method createAdapter()Landroid/widget/ArrayAdapter;
    .locals 4

    .line 175
    new-instance v0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    new-instance v3, Lmiuix/preference/DropDownPreference$PreferenceCheckedProvider;

    invoke-direct {v3, p0, v2}, Lmiuix/preference/DropDownPreference$PreferenceCheckedProvider;-><init>(Lmiuix/preference/DropDownPreference;Landroid/widget/ArrayAdapter;)V

    invoke-direct {v0, v1, v2, v3}, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;-><init>(Landroid/content/Context;Landroid/widget/ArrayAdapter;Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;)V

    return-object v0
.end method

.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 0

    .line 561
    invoke-direct {p0, p1}, Lmiuix/preference/DropDownPreference;->findSpinnerIndexOfValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 0

    .line 488
    iget-object p0, p0, Lmiuix/preference/DropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 267
    iget-object p0, p0, Lmiuix/preference/DropDownPreference;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public getValueIndex()I
    .locals 1

    .line 535
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmiuix/preference/DropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected notifyChanged()V
    .locals 2

    .line 303
    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 306
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mNotifyHandler:Landroid/os/Handler;

    new-instance v1, Lmiuix/preference/DropDownPreference$2;

    invoke-direct {v1, p0}, Lmiuix/preference/DropDownPreference$2;-><init>(Lmiuix/preference/DropDownPreference;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onAttached()V
    .locals 5

    .line 141
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    .line 142
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->getFontLevel(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lmiuix/preference/DropDownPreference;->mLargeFont:Z

    .line 144
    invoke-virtual {p0}, Landroidx/preference/Preference;->getLayoutResource()I

    move-result v0

    .line 145
    sget v3, Lmiuix/preference/R$layout;->miuix_preference_flexible_layout:I

    if-eq v0, v3, :cond_2

    sget v4, Lmiuix/preference/R$layout;->miuix_dropdown_preference_flexible_layout:I

    if-ne v0, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    .line 152
    iget-boolean v0, p0, Lmiuix/preference/DropDownPreference;->mLargeFont:Z

    if-eqz v0, :cond_3

    sget v3, Lmiuix/preference/R$layout;->miuix_dropdown_preference_flexible_layout:I

    .line 154
    :cond_3
    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setLayoutResource(I)V

    :cond_4
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 335
    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->mViewHolder:Landroidx/preference/PreferenceViewHolder;

    .line 336
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->getFontLevel(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lmiuix/preference/DropDownPreference;->mLargeFont:Z

    .line 337
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 338
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lmiuix/preference/R$id;->spinner:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/widget/Spinner;

    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 339
    invoke-direct {p0, p1}, Lmiuix/preference/DropDownPreference;->replaceLayoutAtLargeFont(Landroidx/preference/PreferenceViewHolder;)V

    .line 340
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setImportantForAccessibility(I)V

    .line 341
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-direct {p0, v0}, Lmiuix/preference/DropDownPreference;->disableSpinnerClick(Lmiuix/appcompat/widget/Spinner;)V

    .line 342
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    iget-object v2, p0, Lmiuix/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 343
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 344
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lmiuix/preference/DropDownPreference;->findSpinnerIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    .line 345
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    new-instance v2, Lmiuix/preference/DropDownPreference$3;

    invoke-direct {v2, p0, p1}, Lmiuix/preference/DropDownPreference$3;-><init>(Lmiuix/preference/DropDownPreference;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 352
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    new-instance v2, Lmiuix/preference/DropDownPreference$4;

    invoke-direct {v2, p0, p1}, Lmiuix/preference/DropDownPreference$4;-><init>(Lmiuix/preference/DropDownPreference;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v2}, Lmiuix/appcompat/widget/Spinner;->setOnSpinnerDismissListener(Lmiuix/appcompat/widget/Spinner$OnSpinnerDismissListener;)V

    .line 358
    iget-boolean v0, p0, Lmiuix/preference/DropDownPreference;->mDimVisible:Z

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0}, Lmiuix/appcompat/widget/Spinner;->getWindowManagerFlag()I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/Spinner;->setWindowManagerFlags(I)V

    goto :goto_1

    .line 361
    :cond_1
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0}, Lmiuix/appcompat/widget/Spinner;->getWindowManagerFlag()I

    move-result v1

    and-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/Spinner;->setWindowManagerFlags(I)V

    .line 363
    :goto_1
    iget v0, p0, Lmiuix/preference/DropDownPreference;->mDimAmount:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    .line 364
    iget-object v1, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/widget/Spinner;->setDimAmount(F)V

    .line 367
    :cond_2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lmiuix/preference/DropDownPreference$5;

    invoke-direct {v1, p0, p1}, Lmiuix/preference/DropDownPreference$5;-><init>(Lmiuix/preference/DropDownPreference;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 392
    invoke-super {p0, p1}, Lmiuix/preference/BasePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    .line 208
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 290
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lmiuix/preference/DropDownPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    check-cast p1, Lmiuix/preference/DropDownPreference$SavedState;

    .line 297
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 298
    iget-object p1, p1, Lmiuix/preference/DropDownPreference$SavedState;->mValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    return-void

    .line 292
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 277
    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 278
    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 283
    :cond_0
    new-instance v1, Lmiuix/preference/DropDownPreference$SavedState;

    invoke-direct {v1, v0}, Lmiuix/preference/DropDownPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 284
    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lmiuix/preference/DropDownPreference$SavedState;->mValue:Ljava/lang/String;

    return-object v1
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .locals 0

    .line 272
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 0

    .line 318
    iget-object p0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    if-eqz p0, :cond_0

    .line 320
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->performClick()Z

    const-string p0, "DropDownPreference"

    const-string p1, "trigger from perform click"

    .line 321
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setDimVisible(Z)V
    .locals 0

    .line 226
    iput-boolean p1, p0, Lmiuix/preference/DropDownPreference;->mDimVisible:Z

    return-void
.end method

.method public setEntries(I)V
    .locals 1

    .line 479
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 2

    .line 459
    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 460
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    instance-of v1, v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    if-eqz v1, :cond_0

    .line 461
    check-cast v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->setEntries([Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 463
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 464
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->addAll([Ljava/lang/Object;)V

    .line 465
    iget-object p1, p0, Lmiuix/preference/DropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 467
    :goto_0
    iget-object p1, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    if-eqz p1, :cond_1

    .line 469
    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/preference/DropDownPreference;->findSpinnerIndexOfValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    .line 471
    :cond_1
    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->notifyChanged()V

    return-void
.end method

.method public setEntryIcons([I)V
    .locals 2

    .line 431
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    instance-of v1, v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    if-eqz v1, :cond_0

    .line 432
    check-cast v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->setEntryIcons([I)V

    .line 433
    iget-object p1, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    check-cast p1, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    invoke-virtual {p1}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->getEntryIcons()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->mEntryIcons:[Landroid/graphics/drawable/Drawable;

    .line 437
    :cond_0
    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->notifyChanged()V

    return-void
.end method

.method public setEntryValues(I)V
    .locals 1

    .line 517
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 2

    .line 501
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    instance-of v1, v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    if-eqz v1, :cond_0

    .line 502
    check-cast v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    invoke-virtual {v0, p1}, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 503
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 504
    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->mEntryValues:[Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3

    .line 255
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mValue:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 256
    iget-boolean v2, p0, Lmiuix/preference/DropDownPreference;->mValueSet:Z

    if-nez v2, :cond_1

    .line 257
    :cond_0
    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->mValue:Ljava/lang/String;

    .line 258
    iput-boolean v1, p0, Lmiuix/preference/DropDownPreference;->mValueSet:Z

    .line 259
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)Z

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->notifyChanged()V

    :cond_1
    return-void
.end method

.method public setValueIndex(I)V
    .locals 2

    if-ltz p1, :cond_2

    .line 544
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 548
    :cond_0
    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 549
    iget-object p0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    if-eqz p0, :cond_1

    .line 550
    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p0, "DropDownPreference"

    const-string p1, "Index out of range."

    .line 545
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
