.class final Lcom/miui/home/recents/anim/StateManager$InstanceHelper;
.super Ljava/lang/Object;
.source "StateManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/anim/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHelper"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/home/recents/anim/StateManager$InstanceHelper;

.field private static final sInstance:Lcom/miui/home/recents/anim/StateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/recents/anim/StateManager$InstanceHelper;

    invoke-direct {v0}, Lcom/miui/home/recents/anim/StateManager$InstanceHelper;-><init>()V

    sput-object v0, Lcom/miui/home/recents/anim/StateManager$InstanceHelper;->INSTANCE:Lcom/miui/home/recents/anim/StateManager$InstanceHelper;

    .line 53
    new-instance v0, Lcom/miui/home/recents/anim/StateManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/recents/anim/StateManager;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/recents/anim/StateManager$InstanceHelper;->sInstance:Lcom/miui/home/recents/anim/StateManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSInstance()Lcom/miui/home/recents/anim/StateManager;
    .locals 0

    .line 53
    sget-object p0, Lcom/miui/home/recents/anim/StateManager$InstanceHelper;->sInstance:Lcom/miui/home/recents/anim/StateManager;

    return-object p0
.end method
