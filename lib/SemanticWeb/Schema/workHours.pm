use utf8;

package SemanticWeb::Schema::workHours;

# ABSTRACT: The typical working hours for this job (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'workHours';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The typical working hours for this job (e.g. 1st shift, night shift,
8am-5pm).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
