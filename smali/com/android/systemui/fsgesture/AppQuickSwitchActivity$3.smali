.class Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$3;
.super Ljava/lang/Object;
.source "AppQuickSwitchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->postFinishDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$3;->this$0:Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$3;->this$0:Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
