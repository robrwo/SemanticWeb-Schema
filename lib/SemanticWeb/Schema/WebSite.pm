use utf8;

package SemanticWeb::Schema::WebSite;

# ABSTRACT: A WebSite is a set of related web pages and other items typically served from a single web domain and accessible via URLs.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'WebSite';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v14.0.1';

=encoding utf8

=head1 DESCRIPTION

A WebSite is a set of related web pages and other items typically served
from a single web domain and accessible via URLs.




=head1 ATTRIBUTES


=head2 C<issn>



The International Standard Serial Number (ISSN) that identifies this serial
publication. You can repeat this property to identify different formats of,
or the linking ISSN (ISSN-L) for, this serial publication.


A issn should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_issn>

A predicate for the L</issn> attribute.

=cut

has issn => (
    is        => 'rw',
    predicate => '_has_issn',
    json_ld   => 'issn',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
