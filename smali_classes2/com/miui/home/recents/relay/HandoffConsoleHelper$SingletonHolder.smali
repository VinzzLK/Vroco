.class Lcom/miui/home/recents/relay/HandoffConsoleHelper$SingletonHolder;
.super Ljava/lang/Object;
.source "HandoffConsoleHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/relay/HandoffConsoleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/miui/home/recents/relay/HandoffConsoleHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/miui/home/recents/relay/HandoffConsoleHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/recents/relay/HandoffConsoleHelper;-><init>(Lcom/miui/home/recents/relay/HandoffConsoleHelper$1;)V

    sput-object v0, Lcom/miui/home/recents/relay/HandoffConsoleHelper$SingletonHolder;->INSTANCE:Lcom/miui/home/recents/relay/HandoffConsoleHelper;

    return-void
.end method

.method static synthetic access$100()Lcom/miui/home/recents/relay/HandoffConsoleHelper;
    .locals 1

    .line 18
    sget-object v0, Lcom/miui/home/recents/relay/HandoffConsoleHelper$SingletonHolder;->INSTANCE:Lcom/miui/home/recents/relay/HandoffConsoleHelper;

    return-object v0
.end method
