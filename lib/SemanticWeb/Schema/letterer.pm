use utf8;

package SemanticWeb::Schema::letterer;

# ABSTRACT: The individual who adds lettering

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'letterer';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The individual who adds lettering, including speech balloons and sound
effects, to artwork.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
