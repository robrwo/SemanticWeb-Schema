use utf8;

package SemanticWeb::Schema::OfferForLease;

# ABSTRACT: An [[OfferForLease]] in Schema

use Moo;

extends qw/ SemanticWeb::Schema::Offer /;


use MooX::JSON_LD 'OfferForLease';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.01.0';

=encoding utf8

=head1 DESCRIPTION

An [[OfferForLease]] in Schema.org represents an [[Offer]] to lease out
something, i.e. an [[Offer]] whose [[businessFunction]] is [lease
out](http://purl.org/goodrelations/v1#LeaseOut.). See [Good
Relations](https://en.wikipedia.org/wiki/GoodRelations) for background on
the underlying concepts. 




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Offer>

=cut

1;
