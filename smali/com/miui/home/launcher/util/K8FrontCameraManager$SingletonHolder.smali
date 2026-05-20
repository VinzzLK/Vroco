.class final Lcom/miui/home/launcher/util/K8FrontCameraManager$SingletonHolder;
.super Ljava/lang/Object;
.source "K8FrontCameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/util/K8FrontCameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/miui/home/launcher/util/K8FrontCameraManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Lcom/miui/home/launcher/util/K8FrontCameraManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/util/K8FrontCameraManager;-><init>(Lcom/miui/home/launcher/util/K8FrontCameraManager$1;)V

    sput-object v0, Lcom/miui/home/launcher/util/K8FrontCameraManager$SingletonHolder;->INSTANCE:Lcom/miui/home/launcher/util/K8FrontCameraManager;

    return-void
.end method

.method static synthetic access$000()Lcom/miui/home/launcher/util/K8FrontCameraManager;
    .locals 1

    .line 51
    sget-object v0, Lcom/miui/home/launcher/util/K8FrontCameraManager$SingletonHolder;->INSTANCE:Lcom/miui/home/launcher/util/K8FrontCameraManager;

    return-object v0
.end method
