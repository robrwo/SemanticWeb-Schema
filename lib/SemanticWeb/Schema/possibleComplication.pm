use utf8;

package SemanticWeb::Schema::possibleComplication;

# ABSTRACT: A possible unexpected and unfavorable evolution of a medical condition

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'possibleComplication';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A possible unexpected and unfavorable evolution of a medical condition.
Complications may include worsening of the signs or symptoms of the
disease, extension of the condition to other organ systems, etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
