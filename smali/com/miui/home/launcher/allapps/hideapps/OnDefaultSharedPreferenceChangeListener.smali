.class public abstract Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;
.super Ljava/lang/Object;
.source "OnDefaultSharedPreferenceChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener$OnChangeRunnable;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final dispatchChange(Ljava/lang/String;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener$OnChangeRunnable;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener$OnChangeRunnable;-><init>(Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;)V

    .line 22
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/hideapps/ResultRunnable;->setResult(Ljava/lang/Object;)V

    .line 23
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;->onChange(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public abstract onChange(Ljava/lang/String;)V
.end method
