.class public final Lcom/miui/home/launcher/poco/PocoCategoryHelper$Companion;
.super Ljava/lang/Object;
.source "PocoCategoryHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/poco/PocoCategoryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/poco/PocoCategoryHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/miui/home/launcher/poco/PocoCategoryHelper;
    .locals 0

    .line 16
    sget-object p0, Lcom/miui/home/launcher/poco/PocoCategoryHelper$Holder;->INSTANCE:Lcom/miui/home/launcher/poco/PocoCategoryHelper$Holder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/poco/PocoCategoryHelper$Holder;->getSInstance()Lcom/miui/home/launcher/poco/PocoCategoryHelper;

    move-result-object p0

    return-object p0
.end method

.method public final getKEY_ALL_CATEGORY()Ljava/lang/String;
    .locals 0

    .line 14
    invoke-static {}, Lcom/miui/home/launcher/poco/PocoCategoryHelper;->access$getKEY_ALL_CATEGORY$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
