use utf8;

package SemanticWeb::Schema::PET;

# ABSTRACT: Positron emission tomography imaging.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'PET';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Positron emission tomography imaging.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
