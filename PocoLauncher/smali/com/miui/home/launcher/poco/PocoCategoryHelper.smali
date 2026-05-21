.class public final Lcom/miui/home/launcher/poco/PocoCategoryHelper;
.super Lcom/miui/home/launcher/common/BaseSharePreference;
.source "PocoCategoryHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/poco/PocoCategoryHelper$Companion;,
        Lcom/miui/home/launcher/poco/PocoCategoryHelper$Holder;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/launcher/poco/PocoCategoryHelper$Companion;

.field private static final KEY_ALL_CATEGORY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/launcher/poco/PocoCategoryHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/poco/PocoCategoryHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/launcher/poco/PocoCategoryHelper;->Companion:Lcom/miui/home/launcher/poco/PocoCategoryHelper$Companion;

    const-string v0, "cate_key_all_category"

    .line 14
    sput-object v0, Lcom/miui/home/launcher/poco/PocoCategoryHelper;->KEY_ALL_CATEGORY:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/common/BaseSharePreference;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "com.vroco.launcher_category"

    .line 11
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/poco/PocoCategoryHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getKEY_ALL_CATEGORY$cp()Ljava/lang/String;
    .locals 1

    .line 10
    sget-object v0, Lcom/miui/home/launcher/poco/PocoCategoryHelper;->KEY_ALL_CATEGORY:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final getAllCategories()Ljava/lang/String;
    .locals 2

    .line 25
    sget-object v0, Lcom/miui/home/launcher/poco/PocoCategoryHelper;->KEY_ALL_CATEGORY:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/common/BaseSharePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
