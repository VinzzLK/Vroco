.class Lcom/miui/msa/utils/SharedPreferencesWrapper$2;
.super Ljava/lang/Object;
.source "SharedPreferencesWrapper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/utils/SharedPreferencesWrapper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/msa/utils/SharedPreferencesWrapper;

.field final synthetic val$def:Ljava/lang/String;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/msa/utils/SharedPreferencesWrapper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/miui/msa/utils/SharedPreferencesWrapper$2;->this$0:Lcom/miui/msa/utils/SharedPreferencesWrapper;

    iput-object p2, p0, Lcom/miui/msa/utils/SharedPreferencesWrapper$2;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/msa/utils/SharedPreferencesWrapper$2;->val$def:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/miui/msa/utils/SharedPreferencesWrapper$2;->call()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public call()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/miui/msa/utils/SharedPreferencesWrapper$2;->this$0:Lcom/miui/msa/utils/SharedPreferencesWrapper;

    invoke-static {v0}, Lcom/miui/msa/utils/SharedPreferencesWrapper;->access$100(Lcom/miui/msa/utils/SharedPreferencesWrapper;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/msa/utils/SharedPreferencesWrapper$2;->val$key:Ljava/lang/String;

    iget-object p0, p0, Lcom/miui/msa/utils/SharedPreferencesWrapper$2;->val$def:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
