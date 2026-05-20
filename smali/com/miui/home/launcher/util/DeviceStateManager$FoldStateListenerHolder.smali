.class public Lcom/miui/home/launcher/util/DeviceStateManager$FoldStateListenerHolder;
.super Ljava/lang/Object;
.source "DeviceStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/util/DeviceStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FoldStateListenerHolder"
.end annotation


# instance fields
.field private listener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/miui/home/launcher/util/DeviceStateManager$FoldStateListenerHolder;->mCallback:Ljava/lang/Object;

    .line 68
    iput-object p2, p0, Lcom/miui/home/launcher/util/DeviceStateManager$FoldStateListenerHolder;->listener:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public getCallback()Ljava/lang/Object;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/miui/home/launcher/util/DeviceStateManager$FoldStateListenerHolder;->mCallback:Ljava/lang/Object;

    return-object p0
.end method
