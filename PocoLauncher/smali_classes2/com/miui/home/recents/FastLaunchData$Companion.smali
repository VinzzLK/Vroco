.class public final Lcom/miui/home/recents/FastLaunchData$Companion;
.super Ljava/lang/Object;
.source "FastLaunchData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/FastLaunchData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/FastLaunchData$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBLACK_COLOR_APPS()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    invoke-static {}, Lcom/miui/home/recents/FastLaunchData;->access$getBLACK_COLOR_APPS$cp()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getWHITW_COLOR_APPS()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-static {}, Lcom/miui/home/recents/FastLaunchData;->access$getWHITW_COLOR_APPS$cp()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
