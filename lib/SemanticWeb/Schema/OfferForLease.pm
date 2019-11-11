use utf8;

package SemanticWeb::Schema::OfferForLease;

# ABSTRACT: An OfferForLease in Schema

use Moo;

extends qw/ SemanticWeb::Schema::Offer /;


use MooX::JSON_LD 'OfferForLease';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>An <a class="localLink"
href="http://schema.org/OfferForLease">OfferForLease</a> in Schema.org
represents an <a class="localLink" href="http://schema.org/Offer">Offer</a>
to lease out something, i.e. an <a class="localLink"
href="http://schema.org/Offer">Offer</a> whose <a class="localLink"
href="http://schema.org/businessFunction">businessFunction</a> is <a
href="http://purl.org/goodrelations/v1#LeaseOut.">lease out</a>. See <a
href="https://en.wikipedia.org/wiki/GoodRelations">Good Relations</a> for
background on the underlying concepts.<p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Offer>

=cut

1;
