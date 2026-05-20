.class public final Lcom/miui/home/library/publishservice/PublishServiceManager;
.super Ljava/lang/Object;
.source "PublishServiceManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/library/publishservice/PublishServiceManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/library/publishservice/PublishServiceManager$Companion;

.field private static final instance$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/miui/home/library/publishservice/PublishServiceManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final serviceMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/miui/home/library/publishservice/IPublishService;",
            ">;",
            "Lcom/miui/home/library/publishservice/IPublishService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/library/publishservice/PublishServiceManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/library/publishservice/PublishServiceManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/library/publishservice/PublishServiceManager;->Companion:Lcom/miui/home/library/publishservice/PublishServiceManager$Companion;

    .line 10
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/miui/home/library/publishservice/PublishServiceManager$Companion$instance$2;->INSTANCE:Lcom/miui/home/library/publishservice/PublishServiceManager$Companion$instance$2;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/miui/home/library/publishservice/PublishServiceManager;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/library/publishservice/PublishServiceManager;->serviceMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/library/publishservice/PublishServiceManager;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 5
    sget-object v0, Lcom/miui/home/library/publishservice/PublishServiceManager;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public final getService(Ljava/lang/Class;)Lcom/miui/home/library/publishservice/IPublishService;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/miui/home/library/publishservice/IPublishService;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 19
    iget-object p0, p0, Lcom/miui/home/library/publishservice/PublishServiceManager;->serviceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    instance-of p1, p0, Lcom/miui/home/library/publishservice/IPublishService;

    :goto_0
    if-eqz p1, :cond_1

    check-cast p0, Lcom/miui/home/library/publishservice/IPublishService;

    move-object v0, p0

    :cond_1
    return-object v0
.end method
