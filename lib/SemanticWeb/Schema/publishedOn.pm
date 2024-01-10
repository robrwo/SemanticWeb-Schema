use utf8;

package SemanticWeb::Schema::publishedOn;

# ABSTRACT: A broadcast service associated with the publication event.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'publishedOn';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A broadcast service associated with the publication event.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
