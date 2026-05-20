.class final Lcom/miui/home/launcher/poco/PocoCategoryHelper$Holder;
.super Ljava/lang/Object;
.source "PocoCategoryHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/poco/PocoCategoryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/home/launcher/poco/PocoCategoryHelper$Holder;

.field private static final sInstance:Lcom/miui/home/launcher/poco/PocoCategoryHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/miui/home/launcher/poco/PocoCategoryHelper$Holder;

    invoke-direct {v0}, Lcom/miui/home/launcher/poco/PocoCategoryHelper$Holder;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/poco/PocoCategoryHelper$Holder;->INSTANCE:Lcom/miui/home/launcher/poco/PocoCategoryHelper$Holder;

    .line 21
    new-instance v0, Lcom/miui/home/launcher/poco/PocoCategoryHelper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/miui/home/launcher/poco/PocoCategoryHelper;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/launcher/poco/PocoCategoryHelper$Holder;->sInstance:Lcom/miui/home/launcher/poco/PocoCategoryHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSInstance()Lcom/miui/home/launcher/poco/PocoCategoryHelper;
    .locals 0

    .line 21
    sget-object p0, Lcom/miui/home/launcher/poco/PocoCategoryHelper$Holder;->sInstance:Lcom/miui/home/launcher/poco/PocoCategoryHelper;

    return-object p0
.end method
