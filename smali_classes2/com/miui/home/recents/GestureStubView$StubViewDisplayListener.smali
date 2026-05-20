.class Lcom/miui/home/recents/GestureStubView$StubViewDisplayListener;
.super Ljava/lang/Object;
.source "GestureStubView.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/GestureStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubViewDisplayListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/GestureStubView;


# direct methods
.method private constructor <init>(Lcom/miui/home/recents/GestureStubView;)V
    .locals 0

    .line 1247
    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView$StubViewDisplayListener;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/recents/GestureStubView;Lcom/miui/home/recents/GestureStubView$1;)V
    .locals 0

    .line 1247
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStubView$StubViewDisplayListener;-><init>(Lcom/miui/home/recents/GestureStubView;)V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    .line 1259
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView$StubViewDisplayListener;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->access$400(Lcom/miui/home/recents/GestureStubView;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onDisplayChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView$StubViewDisplayListener;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p0}, Lcom/miui/home/recents/GestureStubView;->access$3100(Lcom/miui/home/recents/GestureStubView;)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
