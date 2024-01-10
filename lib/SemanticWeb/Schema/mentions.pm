use utf8;

package SemanticWeb::Schema::mentions;

# ABSTRACT: Indicates that the CreativeWork contains a reference to

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'mentions';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates that the CreativeWork contains a reference to, but is not
necessarily about a concept.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
