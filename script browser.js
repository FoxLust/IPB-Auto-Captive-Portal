(function() {
    const originalOpen = XMLHttpRequest.prototype.open;
    const originalSend = XMLHttpRequest.prototype.send;

    XMLHttpRequest.prototype.open = function(method, url) {
        this._method = method;
        this._url = url;
        return originalOpen.apply(this, arguments);
    };

    XMLHttpRequest.prototype.send = function(body) {
        if (this._method === 'POST' && this._url.includes('login.php')) {
            const payload = body;
            const payload_fix = `Payload="${payload}"`;
            console.log(payload_fix);
            alert('Silahkan Copy Payload Pada Dev Console Browser sebelum klik OK');
        }
        return originalSend.apply(this, arguments);
    };
    alert('Script Berhasil di Inject, Silahkan Login Seperti Biasa, Jangan Tutup Dev Console Browser nya');
})();