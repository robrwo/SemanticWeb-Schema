use utf8;

package SemanticWeb::Schema::totalJobOpenings;

# ABSTRACT: The number of positions open for this job posting

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'totalJobOpenings';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The number of positions open for this job posting. Use a positive integer.
Do not use if the number of positions is unclear or not known.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
