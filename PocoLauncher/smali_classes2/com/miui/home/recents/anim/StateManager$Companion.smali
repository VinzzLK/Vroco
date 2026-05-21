.class public final Lcom/miui/home/recents/anim/StateManager$Companion;
.super Ljava/lang/Object;
.source "StateManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/anim/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getENABLE_MUTI_WINDOWELEMENT()Z
    .locals 0

    .line 49
    invoke-static {}, Lcom/miui/home/recents/anim/StateManager;->access$getENABLE_MUTI_WINDOWELEMENT$cp()Z

    move-result p0

    return p0
.end method

.method public final getInstance()Lcom/miui/home/recents/anim/StateManager;
    .locals 0

    .line 47
    sget-object p0, Lcom/miui/home/recents/anim/StateManager$InstanceHelper;->INSTANCE:Lcom/miui/home/recents/anim/StateManager$InstanceHelper;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$InstanceHelper;->getSInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    return-object p0
.end method
