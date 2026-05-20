.class Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener$OnChangeRunnable;
.super Lcom/miui/home/launcher/allapps/hideapps/ResultRunnable;
.source "OnDefaultSharedPreferenceChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnChangeRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/launcher/allapps/hideapps/ResultRunnable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener$OnChangeRunnable;->this$0:Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;

    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/hideapps/ResultRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/ResultRunnable;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener$OnChangeRunnable;->this$0:Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;->onChange(Ljava/lang/String;)V

    return-void
.end method
