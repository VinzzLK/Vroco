.class Lcom/miui/home/recents/GestureStubView$4;
.super Ljava/lang/Object;
.source "GestureStubView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/GestureStubView;->injectKeyEvent(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/GestureStubView;

.field final synthetic val$keyCode:I


# direct methods
.method constructor <init>(Lcom/miui/home/recents/GestureStubView;I)V
    .locals 0

    .line 1097
    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView$4;->this$0:Lcom/miui/home/recents/GestureStubView;

    iput p2, p0, Lcom/miui/home/recents/GestureStubView$4;->val$keyCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v0, p0

    .line 1100
    iget-object v1, v0, Lcom/miui/home/recents/GestureStubView$4;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v1}, Lcom/miui/home/recents/GestureStubView;->access$400(Lcom/miui/home/recents/GestureStubView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "injectKeyEvent run"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    iget-object v1, v0, Lcom/miui/home/recents/GestureStubView$4;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v1}, Lcom/miui/home/recents/GestureStubView;->access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureStubView$H;

    move-result-object v1

    iget-object v2, v0, Lcom/miui/home/recents/GestureStubView$4;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v2}, Lcom/miui/home/recents/GestureStubView;->access$2500(Lcom/miui/home/recents/GestureStubView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1102
    iget-object v1, v0, Lcom/miui/home/recents/GestureStubView$4;->this$0:Lcom/miui/home/recents/GestureStubView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/home/recents/GestureStubView;->access$2502(Lcom/miui/home/recents/GestureStubView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1103
    iget-object v1, v0, Lcom/miui/home/recents/GestureStubView$4;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v1}, Lcom/miui/home/recents/GestureStubView;->access$2600(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/OnBackInvokedCallbackInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/miui/home/recents/GestureStubView$4;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-static {v1}, Lcom/miui/home/recents/GestureStubView;->access$2600(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/OnBackInvokedCallbackInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/home/recents/OnBackInvokedCallbackInterface;->getBackNavigationInfo()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1126
    :cond_0
    iget-object v0, v0, Lcom/miui/home/recents/GestureStubView$4;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStubView;->onBackInvoke()V

    goto/16 :goto_1

    .line 1104
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 1105
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    iget v9, v0, Lcom/miui/home/recents/GestureStubView$4;->val$keyCode:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x8

    const/16 v15, 0x101

    move-object v3, v1

    move-wide/from16 v4, v16

    move-wide/from16 v6, v16

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 1108
    new-instance v15, Landroid/view/KeyEvent;

    const/4 v8, 0x1

    iget v9, v0, Lcom/miui/home/recents/GestureStubView$4;->val$keyCode:I

    const/16 v18, 0x101

    move-object v3, v15

    move-object v2, v15

    move/from16 v15, v18

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 1111
    iget-object v3, v0, Lcom/miui/home/recents/GestureStubView$4;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/shared/recents/system/InputEventCompat;->setDisplayId(Landroid/view/InputEvent;I)V

    .line 1112
    iget-object v0, v0, Lcom/miui/home/recents/GestureStubView$4;->this$0:Lcom/miui/home/recents/GestureStubView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-static {v2, v0}, Lcom/android/systemui/shared/recents/system/InputEventCompat;->setDisplayId(Landroid/view/InputEvent;I)V

    :try_start_0
    const-string v0, "android.hardware.input.InputManager"

    .line 1114
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getInstance"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    .line 1115
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1116
    invoke-virtual {v0, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1119
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "injectInputEvent"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/view/InputEvent;

    aput-object v8, v7, v4

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v1, v5, v4

    .line 1120
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v9

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, v4

    .line 1121
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1123
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
