.class Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$1;
.super Ljava/lang/Object;
.source "MultiSelectMonitor.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->clearAllCheckedItems(Lcom/miui/home/icon/CheckedStateChangeReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/miui/home/launcher/ShortcutInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

.field final synthetic val$reason:Lcom/miui/home/icon/CheckedStateChangeReason;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Lcom/miui/home/icon/CheckedStateChangeReason;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$1;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    iput-object p2, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$1;->val$reason:Lcom/miui/home/icon/CheckedStateChangeReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 206
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$1;->val$reason:Lcom/miui/home/icon/CheckedStateChangeReason;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/miui/home/launcher/ShortcutInfo;->setIsChecked(ZLcom/miui/home/icon/CheckedStateChangeReason;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 203
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$1;->accept(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method
