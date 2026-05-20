.class public Lcom/miui/home/recents/relay/HandoffConsoleHelper;
.super Ljava/lang/Object;
.source "HandoffConsoleHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/relay/HandoffConsoleHelper$SingletonHolder;
    }
.end annotation


# instance fields
.field private final mHandoffConsole:Lcom/xiaomi/dist/handoff/system/HandoffConsole;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RelayIconInRecents"

    const-string v1, "HandoffConsole open"

    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/dist/handoff/system/HandoffConsole;->open(Landroid/content/Context;)Lcom/xiaomi/dist/handoff/system/HandoffConsole;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/relay/HandoffConsoleHelper;->mHandoffConsole:Lcom/xiaomi/dist/handoff/system/HandoffConsole;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/recents/relay/HandoffConsoleHelper$1;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/miui/home/recents/relay/HandoffConsoleHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/recents/relay/HandoffConsoleHelper;
    .locals 1

    .line 23
    invoke-static {}, Lcom/miui/home/recents/relay/HandoffConsoleHelper$SingletonHolder;->access$100()Lcom/miui/home/recents/relay/HandoffConsoleHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getHandoffConsole()Lcom/xiaomi/dist/handoff/system/HandoffConsole;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/recents/relay/HandoffConsoleHelper;->mHandoffConsole:Lcom/xiaomi/dist/handoff/system/HandoffConsole;

    return-object p0
.end method
