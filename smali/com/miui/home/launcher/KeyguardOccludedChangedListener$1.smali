.class Lcom/miui/home/launcher/KeyguardOccludedChangedListener$1;
.super Ljava/lang/Object;
.source "KeyguardOccludedChangedListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/KeyguardOccludedChangedListener;->initAndRegisterInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/KeyguardOccludedChangedListener;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/KeyguardOccludedChangedListener;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/miui/home/launcher/KeyguardOccludedChangedListener$1;->this$0:Lcom/miui/home/launcher/KeyguardOccludedChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 35
    iget-object p0, p0, Lcom/miui/home/launcher/KeyguardOccludedChangedListener$1;->this$0:Lcom/miui/home/launcher/KeyguardOccludedChangedListener;

    invoke-static {p0}, Lcom/miui/home/launcher/KeyguardOccludedChangedListener;->access$000(Lcom/miui/home/launcher/KeyguardOccludedChangedListener;)Landroid/app/IOccludedChangedListener;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/KeyguardOccludedChangedListener;->access$100(Lcom/miui/home/launcher/KeyguardOccludedChangedListener;Landroid/app/IOccludedChangedListener;)V

    return-void
.end method
