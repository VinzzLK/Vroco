.class Lcom/miui/home/launcher/allapps/hideapps/OnWeakDefaultPrefChangeListener;
.super Ljava/lang/Object;
.source "OnWeakDefaultPrefChangeListener.java"


# instance fields
.field private onDefaultPrefChangeListenerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/OnWeakDefaultPrefChangeListener;->onDefaultPrefChangeListenerWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public get()Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/OnWeakDefaultPrefChangeListener;->onDefaultPrefChangeListenerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/OnWeakDefaultPrefChangeListener;->get()Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "null"

    :goto_0
    return-object p0
.end method
