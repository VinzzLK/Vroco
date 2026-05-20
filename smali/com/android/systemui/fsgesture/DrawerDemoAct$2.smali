.class Lcom/android/systemui/fsgesture/DrawerDemoAct$2;
.super Ljava/lang/Object;
.source "DrawerDemoAct.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/DrawerDemoAct;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/DrawerDemoAct;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$2;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$2;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->access$200(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 96
    invoke-static {}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->access$700()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    sget-object v1, Lcom/android/systemui/fsgesture/DrawerDemoAct;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "====>>>> width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$2;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    neg-int v0, v0

    invoke-static {v1, v0}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->access$602(Lcom/android/systemui/fsgesture/DrawerDemoAct;I)I

    .line 100
    iget-object v0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$2;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->access$302(Lcom/android/systemui/fsgesture/DrawerDemoAct;I)I

    .line 101
    iget-object v0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$2;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {v0}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->access$200(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$2;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    invoke-static {p0}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->access$600(Lcom/android/systemui/fsgesture/DrawerDemoAct;)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setTranslationX(F)V

    return-void
.end method
