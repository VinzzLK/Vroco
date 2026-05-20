.class Lcom/miui/home/recents/GestureStubView$1;
.super Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;
.source "GestureStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/GestureStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/GestureStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/GestureStubView;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView$1;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onComputeInternalInsets(Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;)V
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView$1;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {p0, p1}, Lcom/miui/home/recents/GestureStubView;->access$000(Lcom/miui/home/recents/GestureStubView;Lcom/android/systemui/shared/recents/touchableRegion/InternalInsetsInfoCompat;)V

    return-void
.end method
