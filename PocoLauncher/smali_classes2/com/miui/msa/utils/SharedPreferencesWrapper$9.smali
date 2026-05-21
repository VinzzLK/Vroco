.class Lcom/miui/msa/utils/SharedPreferencesWrapper$9;
.super Ljava/lang/Object;
.source "SharedPreferencesWrapper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/utils/SharedPreferencesWrapper;->contains(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/msa/utils/SharedPreferencesWrapper;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/msa/utils/SharedPreferencesWrapper;Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/miui/msa/utils/SharedPreferencesWrapper$9;->this$0:Lcom/miui/msa/utils/SharedPreferencesWrapper;

    iput-object p2, p0, Lcom/miui/msa/utils/SharedPreferencesWrapper$9;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/miui/msa/utils/SharedPreferencesWrapper$9;->this$0:Lcom/miui/msa/utils/SharedPreferencesWrapper;

    invoke-static {v0}, Lcom/miui/msa/utils/SharedPreferencesWrapper;->access$100(Lcom/miui/msa/utils/SharedPreferencesWrapper;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/msa/utils/SharedPreferencesWrapper$9;->val$key:Ljava/lang/String;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lcom/miui/msa/utils/SharedPreferencesWrapper$9;->call()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
