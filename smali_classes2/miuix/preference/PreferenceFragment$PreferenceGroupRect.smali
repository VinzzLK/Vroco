.class Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreferenceGroupRect"
.end annotation


# instance fields
.field public endRadioButtonCategory:Z

.field private isRadioButton:Z

.field private isRadioButtonChecked:Z

.field public primeIndex:I

.field public rectF:Landroid/graphics/RectF;

.field public startRadioButtonCategory:Z

.field final synthetic this$0:Lmiuix/preference/PreferenceFragment;

.field public type:I


# direct methods
.method private constructor <init>(Lmiuix/preference/PreferenceFragment;)V
    .locals 0

    .line 892
    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    const/4 p1, -0x1

    .line 894
    iput p1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->primeIndex:I

    const/4 p1, 0x0

    .line 895
    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->endRadioButtonCategory:Z

    .line 896
    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->startRadioButtonCategory:Z

    .line 897
    iput p1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    .line 898
    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->isRadioButton:Z

    .line 900
    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->isRadioButtonChecked:Z

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/preference/PreferenceFragment;Lmiuix/preference/PreferenceFragment$1;)V
    .locals 0

    .line 892
    invoke-direct {p0, p1}, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;-><init>(Lmiuix/preference/PreferenceFragment;)V

    return-void
.end method

.method static synthetic access$1500(Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;)Z
    .locals 0

    .line 892
    iget-boolean p0, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->isRadioButton:Z

    return p0
.end method

.method static synthetic access$1502(Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;Z)Z
    .locals 0

    .line 892
    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->isRadioButton:Z

    return p1
.end method

.method static synthetic access$1600(Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;)Z
    .locals 0

    .line 892
    iget-boolean p0, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->isRadioButtonChecked:Z

    return p0
.end method

.method static synthetic access$1602(Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;Z)Z
    .locals 0

    .line 892
    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->isRadioButtonChecked:Z

    return p1
.end method
