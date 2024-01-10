use utf8;

package SemanticWeb::Schema::termsPerYear;

# ABSTRACT: The number of times terms of study are offered per year

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'termsPerYear';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The number of times terms of study are offered per year. Semesters and
quarters are common units for term. For example, if the student can only
take 2 semesters for the program in one year, then termsPerYear should be
2.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
