.class Lcom/miui/home/recents/GestureSoscController$SingletonHolder;
.super Ljava/lang/Object;
.source "GestureSoscController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/GestureSoscController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static INSTANCE:Lcom/miui/home/recents/GestureSoscController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lcom/miui/home/recents/GestureSoscController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/recents/GestureSoscController;-><init>(Lcom/miui/home/recents/GestureSoscController$1;)V

    sput-object v0, Lcom/miui/home/recents/GestureSoscController$SingletonHolder;->INSTANCE:Lcom/miui/home/recents/GestureSoscController;

    return-void
.end method

.method static synthetic access$100()Lcom/miui/home/recents/GestureSoscController;
    .locals 1

    .line 50
    sget-object v0, Lcom/miui/home/recents/GestureSoscController$SingletonHolder;->INSTANCE:Lcom/miui/home/recents/GestureSoscController;

    return-object v0
.end method
