use utf8;

package SemanticWeb::Schema::SoftwareSourceCode;

# ABSTRACT: Computer programming source code

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'SoftwareSourceCode';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.3';

=encoding utf8

=head1 DESCRIPTION

Computer programming source code. Example: Full (compile ready) solutions,
code snippet samples, scripts, templates.




=head1 ATTRIBUTES


=head2 C<code_repository>

C<codeRepository>

Link to the repository where the un-compiled, human readable code and
related code is located (SVN, github, CodePlex).


A code_repository should be one of the following types:

=over

=item C<Str>

=back

=cut

has code_repository => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'codeRepository',
);


=head2 C<code_sample_type>

C<codeSampleType>

What type of code sample: full (compile ready) solution, code snippet,
inline code, scripts, template.


A code_sample_type should be one of the following types:

=over

=item C<Str>

=back

=cut

has code_sample_type => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'codeSampleType',
);


=head2 C<programming_language>

C<programmingLanguage>

The computer programming language.


A programming_language should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::ComputerLanguage']>

=back

=cut

has programming_language => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'programmingLanguage',
);


=head2 C<runtime>



Runtime platform or script interpreter dependencies (Example - Java v1,
Python2.3, .Net Framework 3.0).


A runtime should be one of the following types:

=over

=item C<Str>

=back

=cut

has runtime => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'runtime',
);


=head2 C<runtime_platform>

C<runtimePlatform>

Runtime platform or script interpreter dependencies (Example - Java v1,
Python2.3, .Net Framework 3.0).


A runtime_platform should be one of the following types:

=over

=item C<Str>

=back

=cut

has runtime_platform => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'runtimePlatform',
);


=head2 C<sample_type>

C<sampleType>

What type of code sample: full (compile ready) solution, code snippet,
inline code, scripts, template.


A sample_type should be one of the following types:

=over

=item C<Str>

=back

=cut

has sample_type => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'sampleType',
);


=head2 C<target_product>

C<targetProduct>

Target Operating System / Product to which the code applies. If applies to
several versions, just the product name can be used.


A target_product should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::SoftwareApplication']>

=back

=cut

has target_product => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'targetProduct',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
