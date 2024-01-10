use utf8;

package SemanticWeb::Schema::occupationLocation;

# ABSTRACT:  The region/country for which this occupational description is appropriate

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'occupationLocation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

 The region/country for which this occupational description is appropriate.
Note that educational requirements and qualifications can vary between
jurisdictions.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
